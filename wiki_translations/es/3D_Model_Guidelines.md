---
title: Directrices sobre modelos en 3D
toc: true
---
Es importante que el SuperTuxKart tenga un estilo de objetos consistente en todas partes. En cierto modo, esta página es análoga a la de [directrices sobre texturas](Texture_Guidelines).

## Estilo

{% capture real_plam_tree -%}

Palmera real

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Modelo de palmera muy de dibujos animados

{%- endcapture -%}

{%- capture realistic -%}

Modelo realista pero simplificado

{%- endcapture -%}

Los objetos en el SuperTuxKart deberían ser realistas en tamaño y forma general. Sin embargo, los objetos no deberían ser tan detallados como en el mundo real. Tomemos una palmera, por ejemplo:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Como se puede ver, el nuevo modelo de la palmera tiene una forma mucho más parecida a la de una palmera real. Pero no es tan detallado como para que parezca real. En resumen, <u>mantén el realismo en la forma general, pero guarda también una cierta apariencia de dibujos animados evitando un detalle excesivo en la forma o las texturas.</u>

Por ejemplo, si te pidieran crear una barrera de hormigón, todo el mundo sabe qué pinta tiene una barrera de hormigón (probablemente las veas cada día cuando vas a trabajar). Así que abres el Blender y haces algo como esto:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

El problema es que faltan muchos detalles y estás simplificando el objeto excesivamente. Parece muy poco trabajado, y si haces todos tus objetos así el resultado final no será tan bueno como podría llegar a ser. La solución es simplemente recopilar imágenes, dibujos, ideas, etc. que te ayuden durante el proceso de crear el objeto. Sí, es un poco como hacer trampa, pero es recomendable y está permitido. El objetivo es tener la inspiración adecuada. Con una imagen como [esta](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), puedes ver todos los detalles y reproducirlos para tu objeto.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

¿Notas la gran diferencia? La barrera es interesante de ver, hay muchos detalles como los ganchos superiores para cargarlas, las franjas de advertencia inferiores, etc. No es fotorrealista pero como mínimo tenemos un objeto con detalles interesantes que podría ser una barrera del mundo real (y, además, el objetivo no es ser totalmente realista, sólo más realista).

## Normas

* Todos los modelos **deben** ser aptos para niños. SuperTuxKart debería cumplir la tipificación "Everyone" (Todos) de la [clasificación ESRB](https://es.wikipedia.org/wiki/Entertainment_Software_Rating_Board).
* Los modelos deben de ser capaces de verse bien tanto solos como en grupo.
* Los modelos con muchos polígonos deberían usar el [Nivell de detalle](Level_of_Detail).
* A no ser que tu modelo sea inseparable de tu circuito, los objetos deberían ser usables en muchos entornos diferentes, de forma que se puedan convertir en "library nodes".
    * Evita añadir suelo o vegetación alrededor de tus objetos (a no ser que tu objeto sea algún tipo de vegetación en sí mismo).
    * Normalmente, la gente debería llevar ropa de propósito general, excepto en casos donde no tenga sentido, como por ejemplo una playa.

## Número de polígonos

El número de polígonos (polycount) es el número de superfecies, o caras, que tienen los objetos 3D. Las versiones antiguas de Blender sólo soportaban objetos hechos de "quads" (cuadriláteros — polígonos hechos de cuatro puntos) y "tris" (triángulos — polígonos hechos de tres puntos). Polígonos se entendía que significaba cuadriláteros. Pera ahora Blender soporta n-gonos, o polígonos con un número ilimitado de puntos, y sólo reporta el número de superficies y de triángulos. De esta forma, como el número de triángulos siempre se puede confiar en que permanecerá inalterado (¡un triángulo nunca puede tener más puntos!), es más preciso contar tris en lugar de polígonos. Por tanto, estas directrices se refieren a los tris.

### Un poco de historia

En los viejos tiempos de los videojuegos era imposible calcular la iluminación perfecta para todos los píxeles. Todos los cálculos intensivos se hacían para cada polígono y després se interpolaban a los píxeles dentro del polígono.

Pero hoy en dia los motores modernos usan la iluminación por píxel. Por lo tanto, la parte más compleja no es el vertex shader sino el pixel shader. Tomemos como ejemplo un objeto que tiene ~500 polígonos. Para la GPU, gestionar un vértice son quizás ~10 instrucciones (no és unnúmero exacto, sólo es para hacernos una idea). Para cada polígono de nuestro modelo el ordenador debe ejecutar ~10 instrucciones, o sea que 500 × 10 = 5000 instrucciones para toda la malla.

Ahora, la parte correspondiente a los píxeles. Depende de cuantos píxeles utilice tu objeto, pero pongamos el peor caso, asumamos que toda la escena esta ocupada por tu objeto. Para cada píxel a computar (la luz, el brillo, el mapa normal, etc) hacen falta ~50 instrucciones de GPU.

Si tienes una resolución de 800 × 600 (la mayoría de la gente tiene una resolución más alta), 800 × 600 × 50 = 24000000 instrucciones. O sea, que incluso doblando el número de superficies no afectaría mucho a la mayor parte de la energía gastada. Ahora se calcula por píxeles, no por superficies.

Por lo tanto, podemos incrementar el número de polígonos sin muchos problemas. Sin embargo, es importante mantenerlo bajo control.

### Midiendo el número de polígonos

Blender muestra el número de polígonos en la barra de estado, mira la captura de pantalla inferior para activarlo si **Scene Statistics** no está marcado hciendo clic con el botón derecho sobre la barra de estado.

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Busca el número de **Tris**. Esa es la información que necesitas. Además, recuerda que el múmero de tris en toda la escena sólo se muestra en el modo de objeto.

### Ejemplos de número de polígonos

* Un avión de carga: ~4000 tris
* Una palmera con nivel de detalle
    * Alto: 1400 tris
    * Medio: 1400 tris
    * Bajo: 42 tris
* Una planta básica: 32 tris
* Un árbol de tamaño medio: 1380 tris
* Una calabaza: 470 tris

### Marcando objetos con muchos polígonos

Es posible marcar objetos de forma que requieran un ordenador más potente. Para hacerlo, abre cualquier escena del STK usando Blender, selecciona el objeto que quieres marcar y activa la opción **Activar los detalles de la visibilidad geométrica** en el panel **Propiedades del objeto de SuperTuxKart**. Entonces podrás configurar la **Visibilidad** con cualquiera de las opciones disponibles para decidir el nivel de efectos gráficos mínimo a partir del cual tu objeto será visible.

## Escalando

Los objetos deben tener las proporciones correctas para que se vean bien en el juego.

* Una palmera tiene una altura de unas 27 unidades de Blender.
* Los edificios de madera del Resort Nórdico tienen una altura aproximada de 8 unidades de Blender.
* Las banderas de Lampone en Candela City tienen una altura de 10 unidades de Blender.
