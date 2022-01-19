---
title: Controle de versões
toc: true
---
SupertTuxKart usa Git para código fonte, e SVN para arquivos de dados. Portanto, se você não os tem, instale-os primeiro. Você pode encontrar instruções para instalá-los na parte inferior da página.

## Núcleo do jogo

O repositório do código principal está hospedado em nossa [página do GitHub](https://github.com/supertuxkart/stk-code). Exemplo de comando clone:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

São uns 350 MB de download.

Os arquivos de dados são hospedados no SourceForge e usam SVN. Exemplo de comando de checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Tem aproximadamente 700 MB de tamanho.

Esses dois repositórios devem ser baixados na mesma pasta, de modo que as pastas `stk-code` e `stk-assets` fiquem próximas uma da outra.

## Repositório de mídia

O repositório de mídia **não é necessário para jogar**. Ele contém os arquivos de origem para ativos (arquivos de mesclagem, arquivos de música e som sem perdas, etc.) e é destinado a artistas. Tem cerca de 3,2 GB de tamanho do download.

O repositório de mídia está hospedado no SourceForge e usa SVN. Exemplo de comando de checkout:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Veja também [a página do repositório de mídia](Media_Repo).

## Diretrizes

Aqui estão algumas diretrizes para desenvolvedores que têm acesso de gravação ao Git/SVN:

* Junte-se ao nosso canal de IRC ou Telegram (veja [Comunidade](Community)). Os desenvolvedores geralmente postam o que estão trabalhando lá, para que a probabilidade de conflitos possa ser diminuída. Além disso, bugs conhecidos de destaque também são discutidos lá.
* Talvez valha a pena se inscrever na lista de e-mail supertuxkart-commit (consulte [Comunidade](Community)). Todas as mensagens de commit são enviadas automaticamente para este endereço, para que você esteja sempre ciente do que está acontecendo e se o seu trabalho interfere no que outras pessoas estão fazendo.
* A versão de desenvolvimento deve sempre compilar. Embora não seja possível testar em todas as plataformas, faça o possível para escrever código portátil. Outros desenvolvedores e testadores geralmente apontam (e corrigem) quaisquer problemas rapidamente.
* Comprometa-se com frequência. Commits frequentes têm a vantagem de atuarem como um backup, o que torna menos prováveis ​​conflitos de mesclagem demorados.
* Tente incluir todas as alterações para um único recurso em um commit (ou seja, não comite cada arquivo separadamente) e tente não misturar vários recursos em um grande commit.

## Instalando o Git

### Linux
`sudo apt install git` ou equivalente em sua distribuição escolhida.

### Windows
Instale o [Git para Windows](https://github.com/git-for-windows/git/releases/latest). Se você deseja uma interface gráfica para o Git, pode escolher a que dá certo para você. Caso contrário, se você não souber qual escolher, poderá instalar o [TortoiseGit](https://tortoisegit.org/download) também após instalar o Git para Windows.

## Instalando o SVN

### Linux
`sudo apt install subversion` ou equivalente em sua distribuição escolhida.

### Windows
Você pode escolher entre vários clientes SVN e usar o que dá certo para você, mas se não souber qual escolher, pode instalar o [TortoiseSVN](https://tortoisesvn.net/downloads.html).
