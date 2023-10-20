---
title: Repositório da Média
display_title: true
---
O **repositório da mídia** é o local onde são armazenados todos os arquivos originais de Modelos 3D, texturas, som e todas as outras artes do jogo usadas no STK. Isso é necessário porque esses arquivos são normalmente muito grandes ou até incompatíveis com o jogo, então estes são reduzidos ou convertidos antes de serem enviados com o jogo.

O repositório da mídia serve outro propósito: Usando-o, podes importar uma grande variedade de texturas e objetos para as pistas que fazes. Como o Blender é sensível sobre a estrutura de arquivos dos seus arquivos de pista quando vinculas texturas e nós de biblioteca do repositório de mídia, recomendamos que coloques o arquivo de projeto do Blender do seu nó de kart/pista/biblioteca na sua própria pasta sob a categoria apropriada na sua cópia descarregada do repositório de mídia, **como se fosse uma parte oficial do jogo.**

### Instalando o repositório da mídia

Nós recomendamos direcionar a versão de desenvolvimento do STK, então a melhor maneira de descarregar o repositório da mídia é com um cliente Subversion (SVN). No entanto, se não conseguires instalar o SVN, há uma solução simples.

#### Melhor modo: Instalando o Subversion

As instruções para instalar o Subversion estão na página [Instalando ferramentas](https://supertuxkart.net/Installing_Tools#subversion-client). Uma vez instalado, usa o seguinte endereço para fazer o checkout do repositório:

* Se estiveres a usar um programa gráfico (por exemplo, TortoiseSVN), este pode solicitar a URL do repositório - `https://svn.code.sf.net/p/supertuxkart/code/media/trunk` - e um diretório de checkout, que é onde tu vais querer onde seja copiado no teu computador.
* No sistema operacional do tipo Unix ou MacOS, um exemplo de comando de checkout seria:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

#### Solução alternativa: Download manual do snapshot

{% start_liquid popup_info %}

Essa solução alternativa é muito simples e descarrega os mesmos arquivos e pastas, mas não atualizará os teus arquivos quando forem feitas alterações no repositório de mídia. Isto significa que, se alterações relevantes forem feitas no repositório após o download do instantâneo, os teus projetos podem parecer diferentes em versões mais recentes ou possivelmente até não funcionar corretamente, a menos que descarregues um novo snapshot.

{% end_liquid %}

Visita este link para gerar um snapshot e descarregares: <https://sourceforge.net/p/supertuxkart/code/HEAD/tarball?path=/media>

Se este solicitar que reenvies a solicitação do snapshot, faz isso. Em seguida, este iniciará o download dos arquivos do repositório de mídia como estão atualmente. Extraia o arquivo ZIP para um local de trabalho onde desejas que a cópia do repositório de mídia esteja. Agora está pronto!

As alterações são feitas no repositório de mídia [com bastante frequência](https://sourceforge.net/p/supertuxkart/code/HEAD/log/?path=), portanto, se quiseres descarregar um novo snapshot, terás que fazer backup de todos os teus projetos para outra pasta, apaga a tua cópia do repositório de mídia local e substitua-a por um novo instantâneo.
