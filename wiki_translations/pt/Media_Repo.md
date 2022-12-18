---
title: Repositório da Mídia
display_title: true
---
O **repositório da mídia** é o local onde são armazenados todos os arquivos originais de Modelos 3D, texturas, som e todas as outras artes do jogo usadas no STK. Isso é necessário porque esses arquivos são normalmente muito grandes ou até incompatíveis com o jogo, então estes são reduzidos ou convertidos antes de serem enviados com o jogo.

O repositório da mídia serve outro propósito: Usando-o, podes importar uma grande variedade de texturas e objetos para as pistas que fazes. Como o Blender é sensível sobre a estrutura de arquivos dos seus arquivos de pista quando vinculas texturas e nós de biblioteca do repositório de mídia, recomendamos que coloques o arquivo de projeto do Blender do seu nó de kart/pista/biblioteca na sua própria pasta sob a categoria apropriada na sua cópia baixada do repositório de mídia, **como se fosse uma parte oficial do jogo.**

Recomendamos que direciones a versão de desenvolvimento do STK, então a melhor maneira de baixar o repositório da mídia é com um cliente Subversion (SVN) (mais informações na página [Instalando Ferramentas](Installing_Tools)).

No sistema operacional do tipo Unix, um exemplo de comando de checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
