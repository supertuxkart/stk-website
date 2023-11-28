---
title: Diretrizes para Modelagem 3D
toc: true
---
É importante que o SuperTuxKart tenha um estilo de objetos consistente. De muitas maneiras, esta página é análoga a [Diretrizes para Texturas](Texture_Guidelines).

## Estilo

{% capture real_plam_tree -%}

Palmeira na realidade

{%- endcapture -%}

{%- capture cartoony_plam_tree -%}

Modelo de palmeira muito caricatural

{%- endcapture -%}

{%- capture realistic -%}

Modelo realista, mas simplificado

{%- endcapture -%}

Os objetos no SuperTuxKart devem ser realistas em tamanho, forma e aspeto geral. No entanto, os objetos não devem ser tão detalhados quanto na vida real. Vejamos uma palmeira, por exemplo:

{% gallery heights=250px
/assets/wiki/RealPalmTree.jpg,{{ real_plam_tree | strip }}
/assets/wiki/STK0.8.1_1.jpg,{{ cartoony_plam_tree | strip }}
/assets/wiki/STK0.9_7.jpg,{{ realistic | strip }}
%}

Podes ver que no novo modelo de palmeira a forma aproxima-se muito mais à de uma palmeira real. No entanto, não é tão detalhado ao ponto de parecer real. Resumindo, <u>mantém o realismo no aspeto geral, mas conserva igualmente uma aparência caricatural ao evitar detalhes excessivos na forma e nas texturas.</u>

Por exemplo, se te pedissem para criar uma barreira de betão, todos sabem como ela é – provavelmente vês barreiras de betão todos os dias quando vais trabalhar. Então abres o Blender e fazes algo assim:

{% gallery
/assets/wiki/STK_tutorial_barrier_1.jpg
%}

O problema é que estás a perder muitos detalhes e a tornar o objeto demasiado simples. Ficou muito pobre e se fizeres todos os teus objetos assim o resultado final não será tão bom quanto poderia ser. A solução é simplesmente reunir imagens, desenhos, ideias, etc. que te ajudem durante o processo de criação do objeto. Sim, é um bocado como fazer batota, mas é recomendado e permitido. O objetivo é ter a inspiração certa. Com uma imagem como [esta](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BarreiraNewJersey.JPG/1280px-BarreiraNewJersey.JPG), poderás ver todos os detalhes e reproduzi-los no teu objeto.

{% gallery
/assets/wiki/STK_tutorial_barrier_2.jpg
%}

Vês a grande diferença? A barreira é interessante de se ver, há muitos detalhes como os arames na parte superior para as carregar, a faixa de aviso na parte inferior, etc. Não é fotorrealista, mas agora pelo menos conseguimos um objeto com detalhes interessantes que poderia ser uma barreira na vida real. (Aliás, o objetivo não é ser completamente realista – apenas quase realista.)

## Regras

* Todos os modelos **DEVEM** ser adequados para crianças. O SuperTuxKart deve adequar-se à [classificação](https://pt.wikipedia.org/wiki/Entertainment_Software_Rating_Board#Classificação) "Everyone" do ESRB ("PEGI 3" na Classificação PEGI).
* Os modelos devem poder ficar bem tanto sozinhos quanto em grupo.
* Modelos com um alto número de polígonos devem usar [Níveis de Detalhe](Level_of_Detail).
* A menos que o teu modelo seja inseparável da tua pista, os objetos devem poder ser usados ​​em vários ambientes diferentes, de forma que se tornem nós de biblioteca.
    * Evita adicionar terra ou vegetação ao redor dos teus objetos (a menos que o teu objeto seja ele mesmo vegetação).
    * As pessoas geralmente devem usar roupas de uso comum, exceto nos casos em que não faz sentido, como na praia.

## Número de polígonos / Polycount

O polycount é o número de superfícies ou faces que os objetos 3D têm. As versões mais antigas do Blender suportavam apenas objetos feitos de "quads" (quadriláteros — polígonos feitos de quatro pontos) e "tris" (triângulos — polígonos feitos de três pontos). "Polis" eram geralmente descritos como o "número de quads". No entanto, o Blender agora suporta n-gons, ou polígonos com um número ilimitado de pontos, e fornece apenas o número de superfícies e tris. Assim, como o número de tris pode ser sempre confiável para permanecer o mesmo (um triângulo nunca ganha mais pontos!), é mais preciso contar tris do que polis. Portanto, estas diretrizes referem-se a tris.

### Um pouco de história

Nos velhos tempos dos videojogos era impossível calcular luzes perfeitas para todos os píxeis. Todo o cálculo intenso era feito para cada polígono e depois interpolado para os píxeis dentro desses polígonos.

Mas hoje em dia os motores modernos usam iluminação por pixel. Portanto, a parte mais complexa não é o sombreador de vértice, mas o sombreador de pixel. Vamos dar um exemplo de um objeto que tem ~500 polígonos. Para a GPU, gerenciar um vértice tenha talvez ~10 instruções (não é um número exato, apenas para dar uma indicação). Para cada poly do seu modelo, o computador fará ~10 instruções, então 500 × 10 = 5000 instruções para toda a malha.

Agora, a parte do pixel. Depende de quantos pixels serão ocupados pelo teu objeto, mas vamos para o pior cenário – vamos supor que o ecrã inteiro esteja preenchido com o teu objeto. Para cada pixel a ser computado (a luz, o brilho, o mapa normal, etc.), serão necessárias ~50 instruções para a GPU.

Se tiveres uma resolução de 800 × 600 (a maioria das pessoas tem uma resolução mais alta), 800 × 600 × 50 = 24.000.000 instruções. Portanto, mesmo que dobres o número de superfícies, não afetará muito a maior parte da energia gasta. Agora é calculado por pixel, não por superfície.

Assim, podemos aumentar o polycount sem muito sarilho. No entanto, é importante mantê-lo sob controle.

### Medindo o Polycount

O Blender mostra o polycount na barra de status, vê o screenshot abaixo para ativá-lo se **Scene Statistics** não estiver marcada clicando com o botão direito do mouse na barra de status:

{% single_gallery
/assets/wiki/Blender_screenshot_tris.jpg
%}

Procura o número de **Tris**. Esta é a informação que tu precisas. Além disso, lembra-te de que o número de tris na cena toda é mostrado apenas no modo de objeto.

### Exemplos de Polycount

* Um avião de carga: ~4000 tris
* Uma palmeira com Nível de Detalhe
    * Alto: 843 tris
    * Médio: 465 tris
    * Baixo: 42 tris
* Uma planta básica: 32 tris
* Uma árvore de tamanho médio: 1380 tris
* Uma abóbora: 470 tris

### Marcando objetos como High-Poly

É possível marcar objetos como necessário um processamento mais poderoso. Para fazer isso, abre qualquer cena STK com o Blender, seleciona o objeto que desejas marcar e ativa a caixa **Ativar detalhes de visibilidade da geometria** no painel **Propriedades do objeto SuperTuxKart**. Aqui podes definir a **Visibilidade** para qualquer uma das opções disponíveis para decidir o nível mínimo de efeitos gráficos em que o teu objeto ficará visível.

## Escala

Os objetos devem ter proporções corretas para que não pareçam estranhos no jogo.

* Uma palmeira tem cerca de 27 unidades de altura no Blender.
* Os edifícios de madeira no Resort do Norte têm aproximadamente 8 unidades de altura no Blender.
* As bandeiras da Lampone na Cidade de Candela têm 10 unidades de altura no Blender.
