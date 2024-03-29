---
title: Diretrizes para Texturas
toc: true
---
Ter boas texturas é talvez uma das coisas mais importantes na criação de arte 3D. Mesmo um objeto lindamente modelado pode parecer horrível com texturas más, então é importante que as texturas que crias e usas se encaixem nestas diretrizes.

## Estilo

As texturas no SuperTuxKart são desenhadas ou pintadas à mão, e não apenas fotos (geralmente, embora possas usar fotos como referência). É claro, isso não significa que precises de tintas físicas – podes usar uma aplicação de pintura digital como o Krita. Outras aplicações também estão listadas na página [Instalar Ferramentas](Installing_Tools).

As texturas também não devem ser completamente artificiais, com aspeto de desenho animado. Sente-te à vontade para adicionar muitos detalhes, desde que uses apenas pintura à mão (exceto nas circunstâncias indicadas abaixo). Para mais informações sobre pintar texturas, vê [a documentação mais recente do Blender](https://docs.blender.org/manual/pt/latest/sculpt_paint/texture_paint/index.html).

### Quando usar Fotos

Em certas circunstâncias, não há qualquer benefício em pintar texturas à mão. Quando pintar uma textura detalhada à mão for consumir demasiado tempo, como no caso de vegetação, pode ser mais conveniente usar uma fotografia real, desde que a foto seja genérica o suficiente e não crie um padrão de mosaicos feio. Toma como exemplo a textura abaixo:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Este caso apresenta um exemplo interessante, dado que esta textura inclui características boas e más. A folha de palmeira é uma boa textura (Nota: a transparência é fornecida por uma máscara alfa para esta textura) por causa da sua iluminação uniforme, ausência de outros detalhes e natureza genérica. Também não é usada num local onde estará sujeita aos problemas de mosaicos discutidos abaixo. A textura do tronco de árvore à direita, por outro lado, não é tão boa devido à sua iluminação não uniforme. Texturizar um tronco de árvore com esta textura resultaria na repetição de listras claras/escuras — uma falha muito percetível. O facto de que a textura do tronco de árvore pode ser usada para texturizar um objeto sólido também a torna inadequada devido à possibilidade de criar mosaicos mais óbvios.

Fotos geralmente não devem ser usadas para texturizar objetos próximos do jogador, dado que os seus detalhes serão mais visíveis e será óbvio que se trata apenas de uma fotografia.

## Cor e Iluminação

As texturas no SuperTuxKart são coloridas e contrastantes, mas não devem destoar. Texturas extremamente brilhantes ou de cores néon/plásticas/doces não serão aceites no repositório principal, a menos que sejam usadas apenas numa área muito pequena, como a placa de partida em XR591. A mesma regra aplica-se a texturas de apenas uma cor. Texturas em puro preto ou puro branco também são desaconselhadas – perdes informações de cor com 100% de preto ou branco.

As texturas devem ser desenhadas como se a cor ambiente e a luz na imagem fossem neutras. O motor do SuperTuxKart alterará automaticamente o equilíbrio de cores e o brilho com base na iluminação da cena e na coloração dos vértices.

## Padrões

Não deve haver nenhum padrão imediatamente visível na textura. Padrões óbvios fazem com que a pista ou o kart pareçam disparatados. Aqui está um exemplo do que **não** fazer:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Outro problema surge, no entanto, em texturas com ausência completa de um padrão. Esta é uma das principais razões para evitar o uso de fotografias como texturas:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Repara que a texturização no Blender cria um padrão de mosaicos feio, apesar de a textura em si não ter nenhum padrão. No entanto, se removeres alguns detalhes e suavizares as arestas, podes obter um resultado muito melhor, embora ainda não seja perfeito:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalhes da Textura

Tenta evitar fazer texturas com detalhes que não fariam parte do material na vida real. Por exemplo, se quiseres uma corda pendurada numa parede, mas não quiseres usar uma malha, não faças uma textura totalmente nova só para adicionar uma corda em cima da textura de madeira. O SuperTuxKart inclui um sombreador de decalque, que permite simplesmente colocar uma textura de corda na segunda camada de UVs e fazê-la aparecer em cima da textura de madeira, sem tornar a textura de madeira inutilizável para outras aplicações. Para mais informações, vê [aqui](Texturing#Decals).

## Restrições Técnicas
* As dimensões das imagens devem ser em potências de dois. Uma textura genérica de tamanho padrão, por exemplo, é 1024 × 1024 ou 2<sup>10</sup> × 2<sup>10</sup>. No entanto, as texturas não precisam de ser quadradas, podes ter uma textura de 1024 × 512 ou 2<sup>10</sup> × 2<sup>9</sup>.
* Não uses texturas grandes para objetos pequenos — isso desperdiça RAM de vídeo.
* Evita criar texturas extremamente pequenas (ex.: 4x4 ou menores), mesmo para cores lisas. Estas podem ter resultados inesperados quando a compressão de texturas é ativada nas definições gráficas.
* Os ficheiros de textura **devem** ser colocados na mesma pasta do teu objeto exportado.
* As texturas devem estar no formato PNG quando
    * A textura for ser usada num objeto próximo que requeira grandes detalhes
    * O objeto contém partes transparentes ou parcialmente transparentes
* As texturas devem estar em formato JPEG para
    * Objetos distantes
    * Texturas do céu (às vezes)
    * Mapas de Luz Ambiente
