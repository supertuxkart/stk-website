---
title: Repositório da Média
display_title: true
---
O **repositório da média** é o local onde estão armazenados todos os ficheiros originais de Modelos 3D, texturas, som e toda a restante arte do jogo usada no STK. Isto é necessário porque esses ficheiros são normalmente muito grandes ou até incompatíveis com o jogo. Assim eles são reduzidos ou convertidos antes de serem colocados no jogo.

O repositório da média serve outro propósito: usando-o, podes importar uma grande variedade de texturas e objetos para as pistas que fazes. Como o Blender é sensível à estrutura de ficheiros dos teus ficheiros de pista quando vinculas texturas e nós de biblioteca do repositório da média, recomendamos que coloques o ficheiro de projeto do Blender do teu nó de kart/pista/biblioteca na sua própria pasta sob a categoria apropriada na tua cópia descarregada do repositório da média, **como se fosse uma parte oficial do jogo.**

### Instalar o repositório da média

Recomendamos o uso da versão de desenvolvimento do STK, por isso a melhor forma de descarregar o repositório da média é com um cliente de Subversion (SVN). No entanto, se não conseguires instalar o SVN, há uma solução simples.

#### Melhor modo: Instalando o Subversion

As instruções para instalar o Subversion estão na página [Instalando ferramentas](https://supertuxkart.net/Installing_Tools#subversion-client). Uma vez instalado, usa o seguinte endereço para fazer o checkout do repositório:

* Se estiveres a usar um programa gráfico (por exemplo, TortoiseSVN), este pode solicitar a URL do repositório - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - e um diretório de checkout, que é para onde vais querer que seja copiado no teu computador.
* Em sistemas operativos tipo Unix ou MacOS, um exemplo de comando de checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Solução alternativa: Descarga manual da "snapshot"

{% start_liquid popup_info %}

Essa solução alternativa é muito simples e descarrega os mesmos arquivos e pastas, mas não atualizará os teus arquivos quando forem feitas alterações no repositório de mídia. Isto significa que, se alterações relevantes forem feitas no repositório após o download do instantâneo, os teus projetos podem parecer diferentes em versões mais recentes ou possivelmente até não funcionar corretamente, a menos que descarregues um novo snapshot.

{% end_liquid %}

Visita este link para gerar um snapshot e o descarregares: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Se este solicitar que reenvies a solicitação do snapshot, faz isso. Em seguida, este iniciará o download dos arquivos do repositório de mídia como estão atualmente. Extraia o arquivo ZIP para um local de trabalho onde desejas que a cópia do repositório de mídia esteja. Agora está pronto!

As alterações são feitas no repositório de mídia [com bastante frequência](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), portanto, se quiseres descarregar um novo snapshot, terás que fazer backup de todos os teus projetos para outra pasta, apaga a tua cópia do repositório de mídia local e substitua-a por um novo instantâneo.
