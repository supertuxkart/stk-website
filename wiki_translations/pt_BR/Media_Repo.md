---
title: Vídeos e Imagens
display_title: true
---
O **repositório de mídia** é o local onde são armazenados todos os arquivos originais de Modelos 3D, texturas, som e todas as outras artes do jogo usadas no STK. Isso é necessário porque esses arquivos são normalmente muito grandes ou até incompatíveis com o jogo, então eles são reduzidos ou convertidos antes de serem enviados com o jogo.

O repositório de mídia serve a outro propósito: usando ele, você pode importar uma grande variedade de texturas e objetos para as pistas que você faz. Como o Blender é sensível sobre a estrutura de arquivos de seus arquivos de pista quando você vincula texturas e nós de biblioteca do repositório de mídia, recomendamos colocar o arquivo de projeto do Blender de seu nó de kart/pista/biblioteca em sua própria pasta sob a categoria apropriada em sua cópia baixada do repositório de mídia, **como se fosse uma parte oficial do jogo.**

Recomendamos direcionar a versão de desenvolvimento do STK, então a melhor maneira de baixar o repositório de mídia é com um cliente Subversion (SVN) (mais informações na página [Instalando Ferramentas](Installing_Tools)).

No sistema operacional do tipo Unix, um exemplo de comando de checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
