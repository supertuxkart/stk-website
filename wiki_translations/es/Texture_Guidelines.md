---
title: Directrices sobre texturas
toc: true
---
Tener buenas texturas es quizás una de las cosas más importantes cuando se crea arte en 3D. Incluso un objeto exquisitamente modelado puede parecer horrible con malas texturas, así que es importante que las texturas que crees y uses sigan estas directrices.

## Estilo

Las texturas del SuperTuxKart son dibuijadas a mano o pintadas, no simplemente fotos (normalmente, aunque se pueden usar fotos como referencia). Obviamente, esto no significa que sea necesario usar pintura real, se pueden usar programas de pintura digital como Krita. Otras aplicaciones también están listadas en la página [Instalando las herramientas](Installing_Tools).

Además, las texturas no solamente son completamente falsas, con apariencia de dibujos animados. Puedes añadir todos los detalles que quieras, siempre que los pintes a mano (excepto bajo las circunstancias explicadas debajo). Para más información sobre como pintar texturas, mira [la documentación más reciente de Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Cuándo usar fotos

En determinadas circunstancias, pintar una textura a mano no aporta nada. Cuando pintar a mano una textura detallada consume demasiado tiempo, como por ejemplo vegetación, puede ser más conveniente utilizar una foto real, siempre que la foto sea lo bastante genérica y no cree un patrón feo de mosaico. Toma como ejemplo la textura inferior:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Este caso es un ejemplo interesante, porque esta textura incluye características buenas y malas. La hoja de la palmera es una buena textura (nota: la transparencia se hace con una mascara alfa en esta textura) por su iluminación uniforme, la falta de otros detalles, y su naturaleza genérica. Además, no se utiliza en un lugar donde estaría sujeta a los problemas de mosaico mencionados más arriba. La textura del tronco del árbol de la derecha, en cambio, no es tan buena debido a su iluminación no uniforme. Aplicar esta textura a un tronco de árbol provocaría una serie de bandas claras y oscuras, un defecto muy evidente. El hecho de que la textura del tronco se pueda usar en un objeto sólido también la hace poco adecuada debido al potencial de más defectos de mosaico.

En general, las fotos no deberían usarse para las texturas de objetos cercanos al jugador, ya que sus detalles serán más visibles y será obvio que sólo se trata de una fotografía.

## Color e iluminación

Las texturas del SuperTuxKart son coloridas y con contraste, pero no deben colisionar. Texturas extremadamente brillantes, o con colores de neón/plástico/caramelo no se aceptarán en el repositorio principal a no ser que sólo se usen en un área muy pequeña, como el cartel de inicio en XR591. La misma regla es aplicable a texturas que solamente tienen un color. Las texturas totalmente blancas o totalmente negras tampoco se recomiendan, ya que se pierde información de color con blanco o negro al 100%

Las texturas deberían dibujarse como si el color ambiental y la luz del dibujo fueran neutrales. El motor del SuperTuxKart cambiará automáticamente el balance de colores y el brillo basándose en la iluminación de la escena y la coloración de los vértices.

## Patrones

La textura no debería tener un patrón inmediatamente visible. Los patrones obvios hacen que el kart o el circuito tengan una apariencia ridícula. Aquí hay un ejemplo de lo que **no** debe hacerse:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Otro problema aparece, sin embargo, con las texturas que carecen completamente de patrón. Esto es un motivo de peso para no usar fotos como texturas:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Fíjate que hacer texturas con Blender crea un patrón feo de mosaico, aunque la textura en sí misma no tenga patrón. Eliminando parte del detalle, sin embargo, y suavizando los bordes, puedes obtener un resultado mucho mejor, aunque que no perfecto.

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalles de las texturas

Procura evitar crear texturas con detalles que no formarían parte del material en la vida real. Por ejemplo, si quieres una cuerda colgada en una pared, pero no quieres hacer servir una malla, no crees una textura nueva sólo para añadir una cuerda encima de la textura de madera. El SuperTuxKart incluye un decal shader, que permite simplemente ponerle una textura de cuerda a la segunda capa UV y hacer que aparezca encima de la textura de madera, sin convertir la textura de madera en inusable para otras aplicaciones. Para más información, ve a [aquí](Texturing#Decals).

## Restricciones técnicas
* Las dimensiones de las imágenes deberían ser potencias de dos. Una textura genérica de tamaño estándar, por ejemplo, es de 1024 × 1024, o 2<sup>10</sup> × 2<sup>10</sup>. Sin embargo, las texturas no tienen por qué ser cuadradas, se podría tener una textura de 1024 × 512, o 2<sup>10</sup> × 2<sup>9</sup>.
* No utilices texturas grandes para objetos pequeños, esto desperdicia memoria de vídeo.
* Los ficheros de textura **deben** estar situados en la misma carpeta que vuestro objeto exportado.
* Las texturas deberían estar en formato PNG cuando
    * La textura se utilizará en un objeto cercano que requiera mucho detalle
    * El objeto contiene partes transparentes o parcialmente transparentes
* Las texturas deberían estar en formato JPEG para
    * Objetos lejanos
    * Texturas del cielo (a veces)
    * Mapas de luz ambiental
