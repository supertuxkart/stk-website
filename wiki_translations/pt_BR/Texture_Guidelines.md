---
title: Instruções para textura
toc: true
---
Ter boas texturas é talvez uma das coisas mais importantes na criação de arte 3D. Mesmo um objeto lindamente modelado pode parecer horrível com texturas ruins, então é importante que as texturas que você cria e usa se encaixem nessas instruções.

## Estilo

As texturas no SuperTuxKart são desenhadas ou pintadas à mão, não apenas fotos (geralmente, embora você possa usar fotos como referência). É claro, isso não significa que você precisa de tintas físicas – você pode usar um aplicativo de pintura digital como o Krita. Outros aplicativos também estão listados na página [Instalando Ferramentas](Installing_Tools).

As texturas também não são completamente falsas, com aparência de desenho animado. Sinta-se à vontade para adicionar muitos detalhes, desde que use apenas pintura à mão (exceto nas circunstâncias indicadas abaixo). Para mais informações sobre pintura de textura, veja [a documentação mais recente do Blender](https://docs.blender.org/manual/en/latest/sculpt_paint/texture_paint/index.html).

### Quando usar Fotos

Sob certas circunstâncias, não há benefício ao usar texturas pintadas à mão. Pintar à mão uma textura detalhada consumiria bastante tempo, como uma vegetação, pode ser mais conveniente usar uma fotografia real, desde que a foto seja genérica o suficiente e não crie um padrão feio de azulejos. Veja por exemplo a textura abaixo:

{% single_gallery /assets/wiki/Palmtree3.jpg %}

Este caso apresenta um exemplo interessante, porque esta textura inclui recursos bons e ruins. A folha de palmeira é uma boa textura (Nota: a transparência é fornecida por uma máscara alfa para esta textura) por causa de sua iluminação uniforme, ausência de outros detalhes e natureza genérica. Também não é usado em um local onde estará sujeito aos problemas de azulejos discutidos abaixo. A textura do tronco de árvore à direita, por outro lado, não é tão boa devido à sua iluminação não uniforme. Texturizar um tronco de árvore com essa textura resultaria na repetição de listras claras/escuras - uma falha muito perceptível. O fato de que a textura do tronco da árvore pode ser usada para texturizar um objeto sólido também o torna inadequado devido ao potencial de ladrilhos mais óbvio.

As fotos geralmente não devem ser usadas para texturizar objetos próximos ao jogador, pois seus detalhes serão mais visíveis e será óbvio que é apenas uma fotografia.

## Cor e Iluminação

As texturas no SuperTuxKart são coloridas e contrastantes, mas não devem colidir. Extremamente brilhantes, texturas neon/plástica/cor de doce não serão aceitas no repositório principal, a menos que sejam usadas apenas em uma área muito pequena, como a placa inicial no XR591. A mesma regra se aplica a texturas que são de apenas uma cor. Texturas em preto puro ou branco puro também são desencorajadas – você perde informações de cor com 100% de preto ou branco.

As texturas devem ser desenhadas como se a cor ambiente e a luz na imagem fossem neutras. O mecanismo do SuperTuxKart alterará automaticamente o equilíbrio de cores e o brilho com base na iluminação da cena e na coloração dos vértices.

## Padrões

Não deve haver nenhum padrão imediatamente visível na textura. Padrões óbvios fazem a pista ou o kart parecer bobo. Aqui está um exemplo do que **não** fazer:

{% single_gallery /assets/wiki/Bad_repeating_texture.jpg %}

Outro problema aparece, no entanto, com texturas que carecem completamente de um padrão. Esta é uma das principais razões para evitar o uso de fotografias como texturas:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border_notmatching.jpg
/assets/wiki/Bad_texture_border_notmatching_blender.jpg
%}

Observe que a texturização no Blender cria um padrão de ladrilho feio, apesar da textura em si não ter nenhum padrão. Ao remover alguns detalhes, no entanto, e suavizar as bordas, você pode obter um resultado muito melhor, embora ainda não seja perfeito:

{% single_gallery heights=300px
/assets/wiki/Bad_texture_border.jpg
/assets/wiki/Bad_texture_border_blender.jpg
%}

## Detalhes da textura

Tente evitar fazer texturas com detalhes que não fariam parte do material na vida real. Por exemplo, se você quiser uma corda pendurada na parede, mas não quiser usar uma malha, não faça uma textura totalmente nova apenas para adicionar uma corda em cima da textura de madeira. SuperTuxKart inclui um sombreador de decalque, que permite que você simplesmente coloque uma textura de corda na segunda camada UV e apareça em cima da textura de madeira, sem tornar a textura de madeira inutilizável para outras aplicações. Para obter mais informações, consulte [aqui](Texturing#Decals).

## Restrições Técnicas
* As dimensões das imagens devem ser potências de dois. Uma textura genérica de tamanho padrão, por exemplo, é 1024 × 1024 ou 2<sup>10</sup> × 2<sup>10</sup>. No entanto, as texturas não precisam ser quadradas, você pode ter uma textura de 1024 × 512 ou 2<sup>10</sup> × 2<sup>9</sup>.
* Não use texturas grandes para objetos pequenos - isso desperdiça RAM de vídeo.
* Os arquivos de textura **devem** ser colocados na mesma pasta do objeto exportado.
* As texturas devem estar no formato PNG quando
    * A textura será usada em um objeto de perto que requer muitos detalhes
    * O objeto contém partes transparentes ou parcialmente transparentes
* As texturas devem estar no formato JPEG quando
    * Objetos distantes
    * Texturas do céu (às vezes)
    * Mapas de luz ambiente
