---
title: Diretrizes para Texturas
toc: true
---
Ter boas texturas é talvez uma das coisas mais importantes na criação de arte 3D. Mesmo um objeto lindamente modelado pode parecer horrível com texturas más, então é importante que as texturas que crias e usas se encaixem nestas diretrizes.

## Estilo

As texturas no SuperTuxKart são desenhadas ou pintadas à mão, e não apenas fotos (geralmente, embora possas usar fotos como referência). É claro, isso não significa que precises de tintas físicas – podes usar uma aplicação de pintura digital como o Krita. Outras aplicações também estão listadas na página [Instalar Ferramentas](Installing_Tools).

As texturas também não devem ser completamente artificiais, com aspeto de desenho animado. Sente-te à vontade para adicionar muitos detalhes, desde que uses apenas pintura à mão (exceto nas circunstâncias indicadas abaixo). Para mais informações sobre pintar texturas, vê [a documentação mais recente do Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Quando usar Fotos

Em certas circunstâncias, não há qualquer benefício em pintar texturas à mão. Quando pintar uma textura detalhada à mão for consumir demasiado tempo, como no caso de vegetação, pode ser mais conveniente usar uma fotografia real, desde que a foto seja genérica o suficiente e não crie um padrão de mosaicos feio. Toma como exemplo a textura abaixo:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Este caso apresenta um exemplo interessante, porque esta textura inclui recursos bons e ruins. A folha de palmeira é uma boa textura (Nota: a transparência é fornecida por uma máscara alfa para esta textura) por causa da sua iluminação uniforme, ausência de outros detalhes e natureza genérica. Também não é usado em um local onde estará sujeito aos problemas de azulejos discutidos abaixo. A textura do tronco de árvore à direita, por outro lado, não é tão boa devido à sua iluminação não uniforme. Texturizar um tronco de árvore com esta textura resultaria na repetição de listras claras/escuras - uma falha muito perceptível. O fato de que a textura do tronco da árvore pode ser usada para texturizar um objeto sólido também o torna inadequado devido ao potencial de ladrilhos mais óbvio.

As fotos geralmente não devem ser usadas para texturizar objetos próximos ao jogador, pois os seus detalhes serão mais visíveis e será óbvio que é apenas uma fotografia.

## Cor e Iluminação

As texturas no SuperTuxKart são coloridas e contrastantes, mas não devem colidir. Texturas extremamente brilhantes, néon/plástica/cor de doce não serão aceitas no repositório principal, a menos que sejam usadas apenas em uma área muito pequena, como a placa de partida em XR591. A mesma regra se aplica a texturas que são de apenas uma cor. Texturas em preto puro ou branco puro também são desencorajadas –  perdes informações de cor com 100% de preto ou branco.

As texturas devem ser desenhadas como se a cor ambiente e a luz na imagem fossem neutras. A engine do SuperTuxKart alterará automaticamente o equilíbrio de cores e o brilho com base na iluminação da cena e na coloração dos vértices.

## Padrões

Não deve haver nenhum padrão imediatamente visível na textura. Padrões óbvios fazem a pista ou o kart parecerem ridículos. Aqui está um exemplo do que **não** fazer:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Outro problema aparece, no entanto, com texturas que completamente falte um padrão. Esta é uma das principais razões para evitar o uso de fotografias como texturas:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Nota que a texturização no Blender cria um padrão de ladrilho feio, apesar da textura em si não ter nenhum padrão. Ao remover alguns detalhes, no entanto, e suavizar as bordas, podes obter um resultado muito melhor, embora ainda não seja perfeito:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalhes da Textura

Tenta evitar fazer texturas com detalhes que não fariam parte do material na vida real. Por exemplo, se quiseres uma corda pendurada na parede, mas não quiseres usar uma malha, não faças uma textura totalmente nova apenas para adicionar uma corda em cima da textura de madeira. O SuperTuxKart inclui um sombreador de decalque, que permite que simplesmente coloques uma textura de corda na segunda camada UV e apareça em cima da textura de madeira, sem tornar a textura de madeira inutilizável para outras aplicações. Para obter mais informações, vê [aqui](Texturing#Decals).

## Restrições Técnicas
* As dimensões das imagens devem ser potências de dois. Uma textura genérica de tamanho padrão, por exemplo, é 1024 × 1024 ou 2<sup>10</sup> × 2<sup>10</sup>. No entanto, as texturas não precisam ser quadradas, podes ter uma textura de 1024 × 512 ou 2<sup>10</sup> × 2<sup>9</sup>.
* Não uses texturas grandes para objetos pequenos - isso desperdiça RAM de vídeo.
* Evita criar texturas extremamente pequenas (ex. 4x4 ou menores), mesmo para cores lisas. Estas podem ter resultados inesperados quando a compressão de textura é ativadas nas configurações gráficas.
* Os arquivos de textura **devem** ser colocados na mesma pasta do teu objeto exportado.
* As texturas devem estar no formato PNG quando
    * A textura será usada em um objeto próximo que requer grandes detalhes
    * O objeto contém partes transparentes ou parcialmente transparentes
* As texturas devem estar em formato JPEG para
    * Objetos distantes
    * Texturas do céu (às vezes)
    * Mapas de Luz Ambiente
