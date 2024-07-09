---
title: Control de fontes
toc: true
---
SupertTuxKart usa Git para o código fonte e SVN para os ficheiros de datos. Polo tanto, se non tes, instálaos primeiro. Podes atopar instrucións para instalalos na parte inferior da páxina.

## Núcleo do xogo

O repositorio de código principal está aloxado na nosa [GitHub page](https://github.com/supertuxkart/stk-code). Exemplo de comando de clonación:

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Ten uns 350 MB de tamaño de descarga.

Os ficheiros de datos están aloxados en SourceForge e usan SVN. Exemplo de comando de pago:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Ten uns 700 MB de tamaño.

Estes dous repositorios deberían descargarse no mesmo cartafol, de xeito que os cartafoles `stk-code` e `stk-assets` estean xuntos.

## Repositorio multimedia

O repositorio multimedia **non é necesario para xogar**. Contén os ficheiros fonte dos recursos (ficheiros .blend, ficheiros de música e son sen perdas, etc.) e está pensado para artistas. Ten uns 3,2 GB de tamaño de descarga.

O repositorio multimedia está aloxado en SourceForge e usa SVN. Exemplo de comando de pago:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Vexa tamén [a páxina do repositorio multimedia](Media_Repo).

## Directrices

Aquí tes algunhas pautas para desenvolvedores que teñen acceso de escritura a Git/SVN:

* Únete á nosa canle IRC ou Telegram (consulta [Comunidade](Comunidade)). Os desenvolvedores adoitan publicar alí o que están a traballar, de xeito que se pode diminuír a probabilidade de conflitos. Ademais, tamén se comentan erros coñecidos de alto perfil.
* Podería valer a pena subscribirse á lista de correo electrónico de supertuxkart-commit (ver [Comunidade](Comunidade)). Todas as mensaxes de confirmación envíanse automaticamente a este enderezo, polo que sempre estarás ao tanto do que está a suceder e se o teu traballo interfire co que fan outras persoas.
* A versión de desenvolvemento sempre debe compilarse. Aínda que non é posible probar en todas as plataformas, fai o posible para escribir código portátil. Outros desenvolvedores e probadores adoitan sinalar (e solucionar) rapidamente calquera problema.
* Comprométete a miúdo. As confirmacións frecuentes teñen a vantaxe de que actúan como unha copia de seguridade, o que fai que os conflitos de fusión que consuman moito tempo sexan menos probables.
* Tenta incluír todos os cambios para unha única función nun commit (é dicir, non comprometas cada ficheiro por separado) e intenta non mesturar varias funcións nun commit grande.

## Instalando Git

### Linux
`sudo apt install git` ou equivalente na distribución que elixas.

### Windows
Instala [Git para Windows](https://github.com/git-for-windows/git/releases/latest). Se queres unha interface gráfica para Git, podes escoller a que che funcione. En caso contrario, se non sabe cal escoller, tamén pode instalar [TortoiseGit](https://tortoisegit.org/download) despois de instalar Git para Windows.

## Instalando SVN

### Linux
`sudo apt install subversion` ou equivalente na distribución que elixas.

### Windows
Podes escoller entre varios clientes SVN e usar o que che funcione, pero se non sabes cal escoller, podes instalar [TortoiseSVN](https://tortoisesvn.net/downloads.html).
