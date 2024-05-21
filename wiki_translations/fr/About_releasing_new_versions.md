---
title: À propos de la publication de nouvelles versions
toc: true
---
## Versions instables contre versions stables

Tous les paquets publiés à partir du tronc sont considérés comme "instables". Ils ne sont pas censés être cassés, mais moins d'étapes sont franchies pour les produire, en sautant celles qui permettent souvent de détecter les bogues, ce qui les rend également plus faciles et plus rapides à réaliser, et donc plus aptes à faciliter le test rapide de nouvelles fonctionnalités. Le processus consiste simplement à créer un paquet pour une distribution générale à partir des sources du tronc.

Pour créer un paquet stable, il faut d'abord créer une branche distincte de master dans l'arbre des sources, en copiant le tronc actuel sur une branche, en tant que "release candidate" (RC), nommée avec le numéro de version plus le numéro RC, par exemple, 0.3rc1. Par la suite, seules les corrections de bogues sont apportées à cette branche (à moins que nous soyons tous d'accord pour introduire une fonctionnalité) sur cette version candidate ; aucun changement dans d'autres domaines du jeu, les mises à jour de la documentation et de l'artwork sont acceptables. Si nous décidons que nous avons besoin de plus de tests après avoir effectué toutes les modifications sur la version candidate, une nouvelle branche est créée à partir de la branche rc précédente (par exemple, une nouvelle branche 1.3-rc2 créée à partir de 1.3-rc1). Cela permet d'accéder facilement à l'historique de tous les fichiers (il pourrait être utile d'ajouter une étiquette pour les RC).

La version finale est une nouvelle branche copiée à partir de la dernière branche RC, et un tag pour la version est créé. Pour l'instant, les branches doivent être conservées, car elles permettent de trouver des problèmes qui pourraient être signalés pour la version finale (s'ils ne peuvent plus être reproduits dans le tronc). Nous pourrions décider d'une politique de suppression des branches plus tard. De plus, la licence sous laquelle STK est publié nous oblige à fournir le code source pendant au moins 3 ans pour tous les binaires que nous fournissons.

## Validation des modifications lors de la préparation d'une version stable

* Toutes les corrections de bogues apportées à la branche RC devraient être transférées à la branche master (ou vice versa). Bien que cela ajoute un peu de surcharge à la livraison d'un changement (puisqu'il doit être livré deux fois), cela permet d'économiser le temps et la complexité de la fusion de toutes les corrections de bogues dans le tronc lorsque la version est terminée, et de garder le tronc libre pour d'autres développements.

* Tous les nouveaux correctifs qui ne sont pas liés à la RC ou à la version doivent être déposés sur master uniquement.

## Liste de contrôle pour les versions stables

* Donner un délai aux traducteurs
    * Exécuter `data/po/update_pot.sh` et s'assurer que transifex dispose du dernier fichier pot pour les traductions.
    * Cela devrait se faire en deux étapes: d'abord, contacter les traducteurs et les informer qu'un gel des chaînes de caractères aura lieu dans un avenir proche, et leur demander un retour d'information. Ils pourraient trouver des problèmes (par exemple des chaînes incorrectes, des chaînes intraduisibles, des fautes de frappe) qui n'avaient pas été détectés auparavant. Une fois les commentaires reçus, annoncez le gel officiel des chaînes.
* Création d'une vidéo rapide (~1min30) présentant les nouvelles fonctionnalités/pistes/etc.
* Après avoir créé un paquet source, essayez de construire à partir de ce paquet. Il arrive que des fichiers soient manquants.
* Documenter la version svn des assets dans doc/assets_version (afin que nous puissions garder une trace de quelle version des assets a été utilisée pour quelle version de stk, nous n'avons pas de répertoires de branches pour les assets en raison de leur taille).
* Créer un "tag" pour les actifs sous <https://svn.code.sf.net/p/supertuxkart/code/stk-assets-release/>
* Exécuter `data/optimize_data.sh`.
* Mise à jour du fichier ChangeLog.
* Mise à jour `data/CREDITS`.
    * N'oubliez pas la section des dons dans la rubrique CRÉDITS.
    * Assurez-vous que `data/CREDITS` est toujours en UTF8 (et non en ascii).
* Sur les systèmes Unix, assurez-vous que tous les fichiers disposent des autorisations de lecture appropriées.
* Mise à jour des traductions à partir de Transifex (après que la date limite publiée a été atteinte).
    * Installer le client transifex (<http://docs.transifex.com/developer/client/setup>). Sur windows placez-le dans le dossier `data/po`. Exécuter `./data/po/pull_from_transifex.sh`
    * Exécuter `data/po/update_po_authors.py` sur tous( !) les fichiers .po pour mettre à jour les sections de crédit pour les traducteurs.
* Veillez à mettre à jour le numéro de version :
    * CMakeLists.txt
    * Créez un fichier `data/supertuxkart.VERSION` (identique à 'supertuxkart.' + PROJECT_VERSION de CMakeLists.txt) - et supprimez tout fichier précédent. Ce fichier est utilisé par stk pour s'assurer qu'il lit les bonnes données d'entrée des actifs.
    * [Exemple de commit](https://github.com/supertuxkart/stk-code/commit/d37b6feb3572d129450902936594378ee9f01e7e)
    * Mettre à jour la chaîne de version des fichiers Ghost Replay intégrés s'ils sont compatibles, exemple de commande `sed -i 's/stk_version: .*/stk_version: 1.3/g' data/replay/*`
* Vérifiez que le serveur de l'addon a bien défini toutes les réalisations (`data/achievements.xml` doit être synchronisé avec la table v3_achievements).
* Make sure to test the game and the gift package with artist debug mode disabled!

Pour le paquet source:

* Copier stk-assets dans stk-code/data
* Vérifiez que `make install` fonctionne comme prévu

Ensuite:

* Créer une version étiquetée(tag) dans la page GitHub de stk-code, cela déclenchera l'empaquetage des fichiers de version à l'aide de GitHub Actions.
* Les paquets de versions Linux et Android doivent être construits et téléchargés manuellement.
* Copie de tous les fichiers de version de GitHub vers SourceForge
* Mise à jour des paramètres par défaut des fichiers sur SourceForge

## Schéma de nommage pour les packages

Tous les fichiers publiés sur la page web STK doivent utiliser le schéma de nommage suivant:

`SuperTuxKart-<VERSION>-<ARCHITECTURE>.<FILE EXTENSION>`

**VERSION**:

* Release candidates: le numéro de version de la prochaine version stable + "-rc" + le numéro du release candidate. Exemples: 0.3-rc1 or 0.3.1-rc2
* Exemple de version Stable: le numero de version. Exemples: 0.3, 0.4

**ARCHITECTURE**:

* Paquets sources: src
* Paquets binaires Windows: win
* Paquets binaires Mac OS X: mac
* Paquets Linux: linux + type de processeur requis. Exemples: linux-64bit, linux-armv7, linux-arm64

**EXTENSION DE FICHIER**:

* Cela dépend du type de fichier. Exemples: tar.xz, zip, ...

*Exemples de noms de fichiers complets: SuperTuxKart-1.3-linux-64bit.tar.xz, SuperTuxKart-git20211207-mac.zip, SuperTuxKart-1.3-rc1-win.zip*

## Où faire l'annonce d'une nouvelle publication

Cette page rassemble les pages Web qui doivent être informées d'une nouvelle version de SuperTuxKart.  Si vous ajoutez une note à un forum, un blog, une page Web, veuillez ajouter l'URL ici et ajouter votre nom (en espérant que dans les prochaines versions, vous pourrez à nouveau contacter les mêmes pages).

### Priorité

* <https://github.com/supertuxkart/stk-website/blob/master/_includes/latest_blog_articles>
* blog STK
    * Assurez-vous d'inclure la bande-annonce et l'affiche (si disponible)
* Page de téléchargement STK GitHub
* Téléchargez la bande-annonce sur notre chaîne YouTube
* Twitter
* Page SourceForge (entrée de nouvelles et à slashdot firehose)
* <https://freegamer.blogspot.com> (a été récupéré sur le forum freegamedev)
* <https://forum.freegamedev.net/>
* Mettez à jour le jeu pour <https://supertuxkart.itch.io/supertuxkart>
* Mettez à jour le jeu pour <https://gamejolt.com/>
