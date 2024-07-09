---
title: Pautas do modelo 3D
toc: true
---
É importante que SuperTuxKart teña un estilo de obxecto consistente. En moitos sentidos, esta páxina é análoga ás [directrices de textura](Directrices_de texturas).

## Estilo

{% capture real_plam_tree -%}

Auténtica palmeira

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Modelo de palmeira moi debuxante

{%- endcapture -%}

{%- capture realistic -%}

Modelo realista pero simplificado

{%- endcapture -%}

Os obxectos en SuperTuxKart deben ser realistas en tamaño, forma e forma xeral. Non obstante, os obxectos non deben ser tan detallados como na vida real. Tome por exemplo unha palmeira:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Podes ver que o novo modelo de palmeira coincide moito máis coa forma dunha palmeira real. Non obstante, non é tan detallado que pareza real. En resumo, <u>manteña o realismo en forma xeral, pero tamén manteña un aspecto de debuxos animados evitando o exceso de detalles na forma ou nas texturas.</u>

Por exemplo, se che pediron que crees unha barreira de formigón, todo o mundo sabe como se ve unha barreira de formigón; probablemente a vexas todos os días cando vas traballar. Entón abres Blender e fai algo así:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

O problema é que estás perdendo moitos detalles e simplificas demasiado o obxecto. Parece moi barato e se fas todos os teus obxectos así o resultado final non será tan bo como podería ser. A solución é simplemente reunir imaxes, debuxos, ideas, etc. que che axuden durante o proceso de creación do obxecto. Si, é un pouco como facer trampas, pero é recomendable e permitido. O obxectivo é ter a inspiración adecuada. Cunha imaxe como [esta](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), podes ver todos os detalles e reproducilos para o teu obxecto.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Ve a gran diferenza? A barreira é interesante de ver, hai moitos detalles como os cables na parte superior para cargalos, a tira de advertencia na parte inferior, etc. Non é fotorrealista pero agora polo menos temos un obxecto con detalles interesantes que poderían ser unha vida real. barreira. (E ademais, o obxectivo non é ser completamente realista, só na súa maioría realista).

## Regras

* Todos os modelos **DEBEN** ser aptos para nenos. SuperTuxKart debería encaixar no [rating] de "Todos" da ESRB (https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings).
* Os modelos deben ser capaces de verse ben tanto sós como en grupo.
* Os modelos high-poly deberían facer uso de [Level of Detail](Nivel_de_detalle).
* A menos que o teu modelo sexa inseparable da túa pista, os obxectos deberían poder usarse en moitos ambientes diferentes para que poidan converterse en nós de biblioteca.
    * Evite engadir chan ou vexetación ao redor dos seus obxectos (a menos que o seu obxecto sexa algún tipo de vexetación en si).
    * A xente xeralmente debería levar roupa de uso xeral, agás nos casos en que non tivese sentido, como a praia.

## Polycount

Polycount é o número de superficies ou caras que teñen os obxectos 3D. As versións anteriores de Blender só admitían obxectos feitos de "quads" (cuadriláteros: polígonos formados por catro puntos) e "tris" (triángulos: polígonos de tres puntos). "Poly" foi xeralmente interpretado como "número de quads". Non obstante, Blender agora admite n-gons, ou polígonos con número ilimitado de puntos, e só ofrece un número de superficies e tris. Así, xa que sempre se pode confiar no número de tris para manter o mesmo (un triángulo nunca obtén máis puntos!), é máis preciso contar tris que poli. Polo tanto, estas directrices refírense a tris.

### Un pouco de historia

Nos vellos tempos dos xogos era imposible calcular luces perfectas para todos os píxeles. Todos os cálculos intensos foron feitos para cada poli e despois interpoláronse aos píxeles dentro do poli.

Pero hoxe en día os motores modernos usan iluminación por píxel. Polo tanto, a parte máis complexa non é o sombreador de vértices, senón o sombreador de píxeles. Poñamos un exemplo dun obxecto que ten ~500 polígonos. Para a GPU, xestionar un vértice é quizais ~10 instrucións (non é o número exacto, só para darche unha indicación). Para cada poli do teu modelo, o ordenador fará ~10 instrucións, polo que 500 × 10 = 5000 instrucións para toda a malla.

Agora, a parte de píxeles. Depende de cantos píxeles ocupe o teu obxecto, pero imos co peor dos casos: supoñamos que toda a pantalla está chea co teu obxecto. Para calcular cada píxel (a luz, o brillo, o mapa normal, etc.), levará ~ 50 instrucións á GPU.

Se tes unha resolución de 800 × 600 (a maioría da xente ten unha resolución máis alta), 800 × 600 × 50 = 24.000.000 instrucións. Polo tanto, aínda que duplicas o número de superficies, non afectarás moito á maior parte da enerxía gastada. Calcúlase por píxeles, non por superficie agora.

Así, podemos aumentar o polycount sen demasiados problemas. Non obstante, é importante mantelo baixo control.

### Medición de polycount

Blender amosa o reconto de polifacéticos na barra de estado, verifique a seguinte captura de pantalla para activala se **Scene Statistics** non está marcada facendo clic co botón dereito na barra de estado:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Busca o número de **Tris**. Esta é a información que necesitas. Ademais, recorda que o número de tris en toda a escena só se mostra no modo obxecto.

### Exemplos de Polycount

* Avión a cargo: ~4000 tris
* Unha palmeira con nivel de detalle
    * Alto: 843 tris
    * Media: 465 tris
    * Baixo: 42 tris
* Unha planta básica: 32 tris
* Unha árbore de tamaño medio: 1380 tris
* Unha cabaza: 470 tris

### Marcando obxectos como High-Poly

É posible marcar obxectos que requiren un ordenador máis potente. Para iso, abra calquera escena STK usando Blender, seleccione o obxecto que desexa marcar e marque a caixa **Habilitar detalles de visibilidade da xeometría** no panel **Propiedades do obxecto SuperTuxKart**. Despois podes establecer **Visibilidade** en calquera das opcións dispoñibles para decidir o nivel mínimo de efectos gráficos no que será visible o teu obxecto.

## Escalado

Os obxectos deben ter as proporcións correctas para que non se vexan estraños no xogo.

* Unha palmeira mide unhas 27 unidades de Blender.
* Os edificios de madeira do Northern Resort miden aproximadamente 8 unidades de Blender.
* As bandeiras de Lampone en Candela City miden 10 unidades de Blender.
