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

* Junta-te ao nosso canal de IRC ou Telegram (vê [Comunidade](Community)). Os desenvolvedores geralmente postam o que estão a trabalhar lá, para que a probabilidade de conflitos possa ser diminuída. Além disso, quaisquer bugs conhecidos em destaque também são discutidos lá.
* Talvez valha a pena inscreves-te na lista de e-mail de supertuxkart-commit (consulte [Comunidade](Community)) Todas as mensagens de commit são enviadas automaticamente para este endereço, para que tu estejas sempre ciente do que está a acontecer e se o teu trabalho interfere no que as outras pessoas fazem.
* A versão de desenvolvimento deve sempre compilar. Embora não seja possível testar em todas as plataformas, faça o possível para escrever código portátil. Outros desenvolvedores e testadores geralmente apontam (e corrigem) quaisquer problemas rapidamente.
* Faz commits com frequência. Commits frequentes têm a vantagem de atuarem como um backup, o que torna menos prováveis os ​conflitos de mesclagem demorados.
* Tenta incluir todas as alterações para um único recurso em um commit (ou seja, não faças um commit para cada arquivo separadamente) e tenta não misturar vários recursos num commit grande.

## Instalando o Git

### Linux
`sudo apt install git` ou o equivalente na tua distribuição escolhida.

### Windows
Instale o [Git para Windows](https://github.com/git-for-windows/git/releases/latest). Se quiseres uma interface gráfica para o Git, podes escolher a que te dá mais jeito. Caso contrário, se não souberes qual escolher, poderás instalar o [TortoiseGit](https://tortoisegit.org/download) após teres instalado o Git para Windows.

## Instalando o SVN

### Linux
`sudo apt install subversion` ou o equivalente na tua distribuição escolhida.

### Windows
Podes escolher entre vários clientes SVN e usar o que te dá mais jeito, mas se não souberes qual escolher, podes instalar o [TortoiseSVN](https://tortoisesvn.net/downloads.html).
