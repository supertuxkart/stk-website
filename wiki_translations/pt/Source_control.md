---
title: Controlo da fonte
toc: true
---
O SuperTuxKart usa Git para código fonte e SVN para ficheiros de dados. Portanto, se não tens estes, instala-os primeiro. Encontrarás instruções de como os instalar no fim da página.

## Núcleo do jogo

O repositório do código principal está hospedado na nossa [página do GitHub](https://github.com/supertuxkart/stk-code). Exemplo de comando para clonar:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Tem aproximadamente 350 MB de tamanho.

Os ficheiros de dados estão hospedados no SourceForge e usam SVN. Exemplo de comando de checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Tem aproximadamente 700 MB de tamanho.

Estes dois repositórios devem ser descarregados para a mesma pasta, de modo que as pastas `stk-code` e `stk-assets` fiquem ao pé uma da outra.

## Repositório da média

O repositório da média **não é necessário para jogar**. Ele contém os ficheiros de origem dos recursos do jogo (ficheiros .blend, música e sons sem perda, etc.) e destina-se a artistas. Tem cerca de 3,2 GB de tamanho.

O repositório da média está hospedado no SourceForge e usa SVN. Exemplo de comando de checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Vê também [a página do Repositório da Média](Media_Repo).

## Diretrizes

Aqui estão algumas diretrizes para os desenvolvedores com acesso de escrita no Git/SVN:

* Junta-te ao nosso canal de IRC ou do Telegram (vê [Comunidade](Community)). Os desenvolvedores geralmente postam o que estão a trabalhar lá, para que a probabilidade de conflitos possa ser diminuída. Aliás, bugs conhecidos em destaque também são discutidos lá.
* Talvez valha a pena subscreveres a lista de e-mails supertuxkart-commit (vê [Comunidade](Community)). Todas as mensagens de commits são enviadas automaticamente para este endereço para que estejas sempre ciente do que está a acontecer e para que saibas se o teu trabalho interfere naquilo que os outros estão a fazer.
* A versão de desenvolvimento deverá sempre compilar. Embora não seja possível testar em todas as plataformas, faz o possível para escrever código portável. Outros desenvolvedores e testadores geralmente apontarão (e corrigirão) quaisquer problemas rapidamente.
* Faz commits com frequência. Commits frequentes têm a vantagem de atuar como uma cópia de segurança, tornando menos provável a ocorrência de conflitos de fusão demorados.
* Tenta incluir todas as alterações a uma única funcionalidade num só commit (ou seja, não faças commits para cada um dos ficheiros separadamente) e tenta não misturar várias funcionalidades num só commit grande.

## Instalando o Git

### Linux
`sudo apt install git` ou o equivalente na distribuição da tua escolha.

### Windows
Instala o [Git para Windows](https://github.com/git-for-windows/git/releases/latest). Se queres uma interface gráfica para o Git, podes escolher a que te dá mais jeito. Caso contrário, se não souberes qual escolher, poderás instalar o [TortoiseGit](https://tortoisegit.org/download) após teres instalado o Git para Windows.

## Instalando o SVN

### Linux
`sudo apt install subversion` ou o equivalente na distribuição da tua escolha.

### Windows
Podes escolher entre vários clientes SVN e usar o que te dá mais jeito, mas se não souberes qual escolher, podes instalar o [TortoiseSVN](https://tortoisesvn.net/downloads.html).
