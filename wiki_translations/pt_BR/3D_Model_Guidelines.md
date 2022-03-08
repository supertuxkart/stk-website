---
title: Diretrizes de modelo 3D
toc: true
---
É importante que o SuperTuxKart tenha um estilo de objeto consistente. De muitas maneiras, esta página é análoga às [diretrizes de textura](Texture_Guidelines).

## Estilo

{% capture real_plam_tree -%}

Palmeira de verdade

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Modelo de palmeira muito caricatural

{%- endcapture -%}

{%- capture realistic -%}

Modelo realista, mas simplificado

{%- endcapture -%}

Os objetos no SuperTuxKart devem ser realistas em tamanho, forma e forma geral. No entanto, os objetos não devem ser tão detalhados quanto na vida real. Pegue uma palmeira, por exemplo:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Você pode ver que o modelo novo de palmeira se aproxima muito mais da forma de uma palmeira real. No entanto, não é tão detalhado ao ponto de parecer real. Resumindo, <u>mantenha o realismo na forma geral, mas também mantenha uma aparência caricatural evitando detalhes excessivos na forma ou nas texturas.</u>

Por exemplo, se foi solicitado a você criar uma barreira de concreto, todos sabem como é uma barreira de concreto – você provavelmente os vê todos os dias quando vai trabalhar. Então você abre o Blender e faz algo assim:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

O problema é que você está perdendo muitos detalhes e simplificando demais o objeto. Parece muito simples e se você fizer todos os seus objetos assim o resultado final não será tão bom quanto poderia ser. A solução é simplesmente reunir imagens, desenhos, ideias, etc. que ajudarão você durante o processo de criação do objeto. Sim, é um pouco como trapacear, mas é recomendado e permitido. O objetivo é ter a inspiração certa. Com uma imagem como [esta](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), você pode ver todos os detalhes e reproduzi-los para seu objeto.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Vê a grande diferença? A barreira é interessante de se ver, há muitos detalhes como os fios na parte superior para carregá-los, a faixa de aviso na parte inferior, etc. Não é fotorrealista, mas agora pelo menos conseguimos um objeto com detalhes interessantes que poderia ser uma barreira na vida real. (E, além disso, o objetivo não é ser completamente realista – apenas principalmente realista.)

## Regras

* Todos os modelos **DEVEM** ser adequados para crianças. O SuperTuxKart deve se adequar à [classificação](https://en.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Ratings) "Everyone" do ESRB ("Livre" da Classificação Indicativa Brasileira).
* Os modelos devem ser capazes de ter uma boa aparência tanto sozinhos quanto em grupos.
* Modelos com alto número de polígonos (high-poly) devem usar [Nível de Detalhe](Level_of_Detail) (LOD - Level of Detail).
* A menos que seu modelo seja inseparável de sua pista, os objetos devem ser usados ​​em muitos ambientes diferentes para que possam ser transformados em nós de biblioteca.
    * Evite adicionar terra ou vegetação ao redor de seus objetos (a menos que seu objeto seja algum tipo de vegetação).
    * As pessoas geralmente devem usar roupas genéricas, exceto nos casos em que não faz sentido, como na praia.

## Polycount

Polycount é o número de superfícies ou faces que os objetos 3D possuem. Versões mais antigas do Blender suportavam apenas objetos feitos de "quads" (quadriláteros - polígonos feitos de quatro pontos) e "tris" (triângulos - polígonos feitos de três pontos). "Poli" era geralmente entendido como "número de quadras". No entanto, o Blender agora suporta n-gons, ou polígonos com número ilimitado de pontos, e fornece apenas números de superfícies e tris. Assim, como o número de tris sempre pode ser confiável para permanecer o mesmo (um triângulo nunca ganha mais pontos!), é mais preciso contar tris do que poly. Portanto, essas diretrizes se referem a tris.

### Um pouco de história

Nos jogos antigos era impossível calcular luzes perfeitas para todos os pixels. Toda computação intensa era feita para cada polígono e depois interpolada para os pixels dentro do polígono.

Mas hoje em dia os motores modernos usam iluminação por pixel. Portanto, a parte mais complexa não é o sombreador de vértice, mas o sombreador de pixel. Vamos dar um exemplo de um objeto que tem ~500 polígonos. Para a GPU, gerenciar um vértice tenha talvez ~10 instruções (não é um número exato, apenas para dar uma indicação). Para cada poly do seu modelo, o computador fará ~10 instruções, então 500 × 10 = 5000 instruções para toda a malha.

Agora, a parte do pixel. Depende de quantos pixels serão ocupados pelo seu objeto, mas vamos para o pior cenário – vamos supor que toda a tela esteja preenchida com seu objeto. Para cada pixel a ser computado (a luz, o brilho, o mapa normal, etc.), serão necessárias ~50 instruções para a GPU.

Se você tem uma resolução de 800 × 600 (a maioria das pessoas tem resolução mais alta), 800 × 600 × 50 = 24.000.000 instruções. Portanto, mesmo que você dobre o número de superfícies, não afetará muito a maior parte da energia gasta. É calculado por pixel, não por superfície agora.

Assim, podemos aumentar o polycount sem muito problema. No entanto, é importante mantê-lo sob controle.

### Medindo o Polycount

O Blender exibe polycount na barra de status, cheque o print de tela abaixo para habilitá-lo se **Scene Statistics** não estiver marcada clicando com o botão direito do mouse na barra de status:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Procure o número de **Tris**. Esta é a informação que você precisa. Além disso, lembre-se de que o número de tris em toda a cena é mostrado apenas no modo de objeto.

### Exemplos de polycount

* Um avião de carga: ~4000 tris
* Uma palmeira com Nível de Detalhe
    * Alto: 843 tris (triângulos)
    * Médio: 465 tris
    * Baixo: 42 tris
* Uma planta básica: 32 tris
* Uma palmeira de tamanho médio: 1380 tris
* Uma abóbora: 470 tris

### Marcando objetos como High-Poly

É possível marcar objetos como necessário processamento mais poderoso. Para fazer isso, abra qualquer cena STK usando o Blender, selecione o objeto que deseja marcar e ative a caixa **Ativar detalhes de visibilidade da geometria** no painel **Propriedades do objeto SuperTuxKart**. Você pode então definir **Visibilidade** para qualquer uma das opções disponíveis para decidir o nível mínimo de efeitos gráficos em que seu objeto ficará visível.

## Escala

Os objetos devem ter proporções corretas para que não pareçam estranhos no jogo.

* Uma palmeira tem cerca de 27 unidades de altura do Blender.
* Os edifícios de madeira no Refúgio do Norte têm aproximadamente 8 unidades de altura do Blender.
* As bandeiras da Lampone na Cidade de Candela têm 10 unidades de altura do Blender.
