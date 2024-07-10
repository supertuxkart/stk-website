---
title: Pautas de textura
toc: true
---
Ter boas texturas é quizais unha das cousas máis importantes á hora de crear obras de arte en 3D. Mesmo un obxecto ben modelado pode parecer horrible con malas texturas, polo que é importante que as texturas que fagas e uses se axusten a estas directrices.

## Estilo

As texturas en SuperTuxKart son debuxadas ou pintadas a man, non só fotos (normalmente, aínda que podes usar fotos como referencia). Por suposto, isto non significa que necesites pinturas físicas; podes usar unha aplicación de pintura dixital como Krita. Outras aplicacións tamén están listadas na páxina [Ferramentas de instalación](Installing_Tools).

As texturas tampouco son completamente falsas, con aspecto de debuxos animados. Non dubides en engadir moitos detalles, sempre que uses só pintura a man (excepto nas circunstancias que se indican a continuación). Para obter máis información sobre a pintura de texturas, consulte [a documentación máis recente de Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Cando usar Fotos

Baixo certas circunstancias non hai ningún beneficio para pintar texturas a man. Cando pintar a man unha textura detallada levaría moito tempo, como para a vexetación, pode ser máis conveniente usar unha fotografía real, sempre que a foto sexa o suficientemente xenérica e non cree un patrón de mosaico feo. Tome por exemplo a seguinte textura:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Este caso presenta un exemplo interesante, porque esta textura inclúe características tanto boas como malas. A folla de palmeira ten unha boa textura (Nota: a transparencia é proporcionada por unha máscara alfa para esta textura) pola súa iluminación uniforme, a falta doutros detalles e a súa natureza xenérica. Tampouco se usa nun lugar onde estará suxeito aos problemas de mosaico que se comentan a continuación. A textura do tronco da árbore da dereita, en cambio, non é tan boa debido á súa iluminación non uniforme. Texturizar un tronco de árbore con esta textura provocaría que se repitan raias claras/escuras, un defecto moi notable. O feito de que a textura do tronco da árbore poida usarse para texturar un obxecto sólido tamén o fai inadecuado debido ao potencial de mosaicos máis evidentes.

As fotos non deberían usarse xeralmente para texturar obxectos próximos ao reprodutor, xa que os seus detalles serán máis visibles e será obvio que só se trata dunha fotografía.

## Cor e iluminación

As texturas en SuperTuxKart son coloridas e contrastantes, pero non deben chocar. No repositorio principal non se aceptarán texturas extremadamente brillantes, de cor neón/plástico/doce, a menos que se usen só nunha área moi pequena, como o sinal de inicio en XR591. A mesma regra aplícase ás texturas que só teñen unha cor. Tamén se desaconsellan as texturas en branco puro ou en negro puro: perdes a información de cor con branco ou negro 100 %.

As texturas deben debuxarse ​​coma se a cor e a luz ambiental da imaxe fosen neutras. O motor de SuperTuxKart cambiará automaticamente o balance de cor e o brillo en función da iluminación da escena e da cor dos vértices.

## Patróns

Non debe haber ningún patrón visible inmediatamente na textura. Os patróns obvios fan que a pista ou o kart parezan parvos. Aquí tes un exemplo do que **non** facer:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Non obstante, aparece outro problema con texturas que carecen por completo de patrón. Esta é unha das principais razóns para evitar o uso de fotografías como texturas:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Teña en conta que a textura en Blender crea un patrón de mosaico feo, a pesar de que a propia textura non teña ningún patrón. Non obstante, eliminando algúns detalles e suavizando os bordos, podes obter un resultado moito mellor, aínda que aínda non sexa perfecto:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalles de textura

Intenta evitar facer texturas con detalles que non formarían parte do material na vida real. Por exemplo, se queres unha corda colgada nunha parede, pero non queres usar unha malla, non fagas unha textura completamente nova só para engadir unha corda encima da textura da madeira. SuperTuxKart inclúe un sombreador de calcomanías, que permite simplemente poñer unha textura de corda na segunda capa UV e que apareza enriba da textura da madeira, sen facer que a textura da madeira sexa inutilizable para outras aplicacións. Para obter máis información, consulte [aquí](Texturing#Decals).

## Restricións técnicas
* As dimensións das imaxes deben ser potencias de dous. Unha textura xenérica de tamaño estándar, por exemplo, é 1024 × 1024, ou 2<sup>10</sup> × 2<sup>10</sup>. Non obstante, as texturas non teñen que ser cadrados, pode ter unha textura de 1024 × 512 ou 2<sup>10</sup> × 2<sup>9</sup>.
* Non use texturas grandes para obxectos pequenos, xa que desperdicia memoria RAM de vídeo.
* Evite crear texturas moi pequenas (por exemplo, 4x4 ou máis pequenas), mesmo para cores lisas. Estes poden ter resultados inesperados cando a compresión de texturas está activada na configuración de gráficos.
* Os ficheiros de textura **deben** colocarse no mesmo cartafol que o obxecto exportado.
* As texturas deben estar en formato PNG cando
    * A textura empregarase nun obxecto próximo que requira gran detalle
    * O obxecto contén partes transparentes ou parcialmente transparentes
* As texturas deben estar en formato JPEG para
    * Obxectos afastados
    * Texturas do ceo (ás veces)
    * Mapas de luz ambiental
