---
title: Gestion des sources
toc: true
---
SuperTuxKart utilise Git pour le code source et SVN pour le suivi des fichiers.. Tu devras les installer s'ils ne le sont pas déjà. Tu trouveras les instructions d'installation au bas de la page.

## Code du jeu

Le dépôt du code source du jeu est hébergé sur notre [page GitHub](https://github.com/supertuxkart/stk-code). Il peut être cloné par la commande :

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

Le téléchargement pèse environ 350 MB.

Les fichiers du jeu sont hébergés sur SourceForge et uilisent SVN. Il peut être synchronisé par la commande:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

Le téléchargement pèse environ 700 MB.

Ces deux dépôts doivent être téléchargés dans le même dossier, de maanière à ce qque les dossiers `stk-code` et `stk-assets` se trouvent au même endroit.

## Dépôt multimédia

Le dépôt multimédia n'est **pas requis pour le jeu**. Il contient les sources vers les fichiers du jeu (fichiers .blend, musiques et son en haute qualité, etc…) et est prévu pour les artistes. Le  téléchargement pèse environ 3.2 GB.

The media repository is hosted on SourceForge and uses SVN. Example checkout command:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

Voir aussi [la page du dépôt Multimédia](Media_Repo).

## Directives

Here are some guidelines for developers who have write access to Git/SVN:

* Rejoignez notre canal IRC ou Telegram (voir [Communauté](Community)). Les développeurs y expliquent sur quoi ils travaillent actuellement, afin de réduire les risques de conflits. Les bugs les plus importants y sont également discutés.
* Il peut être intéressant de vous inscrire à la liste de diffusion supertuxkart-commit (voir [Communauté](Community)). Tous les messages de validation sont automatiquement envoyés à cette adresse, vous serez donc toujours au courant de ce qui se passe et si votre travail interfère avec ce que les autres sont en train de faire.
* La version de développement doit toujours être compilable. Bien qu'il soit impossible de tester systématiquement sur toutes les plateformes, faites de votre mieux pour écrire du code portable. Les autres développeurs et testeurs signalent (et corrigent) généralement rapidement tout ce qui pose problème.
* Committez vous modifications régulièrement. Les commits fréquents ont l'avantage d'agir comme une sauvegarde, rendant les conflits de fusion chronophages plus rares.
* Essayez d'inclure toutes les modifications liées à une fonctionnalité dans un seul commit (c'est-à-dire, n'envoyez pas chaque fichier modifié séparément) et essayez de ne pas mélanger plusieurs corrections/fonctionnalités dans un seul commit.

## Installer Git

### Linux
`sudo apt install git` ou l'équivalent suivant la distribution que vous utilisez.

### Windows
Installez [Git pour Windows](https://github.com/git-for-windows/git/releases/latest). Si vous désirez une interface graphique pour Git, choisissez celle qui vous convient. Si vous ne savez pas laquelle installer, vous pouvez essayer [TortoiseGit](https://tortoisegit.org/download) après l'installation de Git pour Windows.

## Installer SVN

### Linux
`sudo apt install subversion` ou l'équivalent suivant la distribution que vous utilisez.

### Windows
Vous pouvez choisir parmi plusieurs clients SVN et utiliser celui qui vous convient. Si vous ne savez pas lequel utiliser, vous pouvez essayer [TortoiseSVN](https://tortoisesvn.net/downloads.html).
