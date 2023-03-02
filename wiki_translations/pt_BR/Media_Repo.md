---
title: Vídeos e Imagens
display_title: true
---
O **repositório de mídia** é o local onde são armazenados todos os arquivos originais de Modelos 3D, texturas, som e todas as outras artes do jogo usadas no STK. Isso é necessário porque esses arquivos são normalmente muito grandes ou até incompatíveis com o jogo, então eles são reduzidos ou convertidos antes de serem enviados com o jogo.

O repositório de mídia serve a outro propósito: usando ele, você pode importar uma grande variedade de texturas e objetos para as pistas que você faz. Como o Blender é sensível sobre a estrutura de arquivos de seus arquivos de pista quando você vincula texturas e nós de biblioteca do repositório de mídia, recomendamos colocar o arquivo de projeto do Blender de seu nó de kart/pista/biblioteca em sua própria pasta sob a categoria apropriada em sua cópia baixada do repositório de mídia, **como se fosse uma parte oficial do jogo.**

### Instalando o repositório de mídia

Recomendamos direcionar a versão de desenvolvimento do STK, então a melhor maneira de baixar o repositório de mídia é com um cliente Subversion (SVN). No entanto, se você não conseguir instalar o SVN, há uma solução simples.

#### Melhor modo: Instalando Subversion

As instruções para instalar o Subversion estão na página [Instalando ferramentas](https://supertuxkart.net/Installing_Tools#subversion-client). Uma vez instalado, use o seguinte endereço para fazer o checkout do repositório:

* Se você estiver usando um programa gráfico (por exemplo, TortoiseSVN), ele pode solicitar a URL do repositório - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - e um diretório de checkout, que é onde você deseja que ele seja copiado no seu computador.
* No sistema operacional do tipo Unix ou MacOS, um exemplo de comando de checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Solução alternativa: download manual do snapshot

{% start_liquid popup_info %}

Essa solução alternativa é muito simples e baixa os mesmos arquivos e pastas, mas não atualizará seus arquivos quando forem feitas alterações no repositório de mídia. Isso significa que, se alterações relevantes forem feitas no repositório após o download do instantâneo, seus projetos podem parecer diferentes em versões mais recentes ou possivelmente até não funcionar corretamente, a menos que você baixe um novo snapshot.

{% end_liquid %}

Visite este link para gerar um snapshot e baixá-lo: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Se ele solicitar que você reenvie a solicitação de snapshot, faça isso. Em seguida, ele iniciará o download dos arquivos do repositório de mídia como estão atualmente. Extraia o arquivo ZIP para um local de trabalho onde deseja que sua cópia do repositório de mídia esteja. Agora está pronto!

As alterações são feitas no repositório de mídia [com bastante frequência](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), portanto, se você quiser baixar um novo snapshot, você terá que fazer backup de todos os seus projetos para outra pasta, exclua sua cópia do repositório de mídia local e substitua-a por um novo instantâneo.
