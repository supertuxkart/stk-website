---
title: Mode débogage artiste
toc: true
---
SuperTuxKart comprend un "Mode de débogage d'artiste" caché avec une variété de fonctionnalités pour aider les artistes à résoudre plus facilement les problèmes avec leurs pistes.  Le mode Artist Debug comprend des vues de rendu spéciales et d’autres fonctionnalités destinées aux artistes et aux développeurs.

L'exécution de SuperTuxKart à partir de la ligne de commande peut également fournir des informations utiles pour déboguer une piste dans la sortie du terminal.

## Activation du mode débogage de l'artiste

Lorsque STK est fermé, ouvrez le fichier de configuration STK. (Voir le [FAQ](FAQ) question "Où est enregistrée la configuration ?")

Localisez la ligne qui dit

{%popup_code
xml
<!-- Whether to enable track debugging features -->
<artist_debug_mode value="false" />%}

et change-le en

{%popup_code
xml
<!-- Whether to enable track debugging features -->
<artist_debug_mode value="true" />%}

## Caractéristiques

{%popup_info La plupart des outils répertoriés ci-dessous utilisent des raccourcis clavier. Bien entendu, vous devrez vous assurer que la configuration de votre clavier n'attribue pas ces touches à autre chose si vous souhaitez pouvoir les utiliser. D'autres fonctionnalités (comme indiqué) utilisent le menu de débogage, qui est disponible sur n'importe quel écran en cliquant avec le click-droit.%}

### Débogage Piste

* Voler: les karts peuvent être instantanément transformés en objets volants. C'est très utile pour regarder de plus près des maillages peu visibles depuis la route, ou pour sauter de grandes portions de piste pour aller directement dans la zone qui vous intéresse.
    * I: s'envoler
    * K: descendre
* S'il n'y a pas de sol sous la zone de départ des karts, STK imprimera normalement un message d'erreur sur le terminal et abandonnera; en mode débogage, cependant, le kart se contentera de survoler pour que vous puissiez voir quel est le problème.
* Caméra à la première personne (disponible dans le menu de débogage) : survolez la carte avec WASD et faites pivoter la caméra avec Q et E. Utilisez une souris pour contrôler votre direction. Il existe également une version fluide qui amortit vos mouvements, qui peut être ajustée dans le fichier de configuration de SuperTuxKart.
* Pas de a_vos_marque-prêt-parter : Pour accélérer le test de votre morceau, en mode **débogage artiste**, lorsque vous jouez seul contre aucun adversaire, les messages a_vos_marque/prêt/parter sont ignorés très rapidement.

### Débogage Kart/AI

* Débogage ligne de contrôle(checklines): Lancez SuperTuxKart depuis la ligne de commande avec l'option **`--check-debug`**, et vous verrez visuellement où se trouvent les lignes de contrôle; les lignes de contrôle actives apparaîtront en rouge, les lignes inactives en blanc; et les informations sur quel kart franchit quelle ligne de contrôle seront imprimées sur le terminal.
* L'option **`--track-debug`** vous permettra de voir où se trouvent les transmissions.
* Il est possible de définir 0 tour dans l'écran de configuration de la course. Ceci est utile pour tester les animations de kart.

### Débogage Graphique

* Recharger les textures (dans le menu de débogage sous **Graphic**): cela vous permet de recharger les textures à la volée, y compris les cartes brillantes, alpha et normales, ce qui permet de voir beaucoup plus facilement à quoi ressemblera une carte brillante dans le jeu.
* Images par seconde (dans le menu de débogage sous **FPS**) : cliquez sur "Basculer FPS" pour afficher les images par seconde, le nombre de polycomptes, etc. dans le jeu.
* Ajuster les lumières/Ajuster les valeurs (dans le menu de débogage sous **Lighting**) : vous pouvez ajuster les valeurs du rouge, du vert, du bleu, de l'énergie et du rayon de la lumière la plus proche du kart (les émetteurs nitro et autres lumières invisibles sont ignorés) et voir l'effet immédiatement .  Cela s'applique également au soleil (si aucune autre lumière n'est plus proche) pour trouver facilement la bonne couleur pour votre soleil.

### Débogage Physique

* Débogage physique (dans le menu de débogage sous **Graphics**): Cela montre les bords et les normales de certains maillages.
* Vue Normales (dans le menu de débogage sous **Graphics**): Cela montre toutes les normales de tous les maillages, à l'exception de ceux animés.  Cependant, toutes les textures sont cachées.

### Effets de caméra

* Vues alternatives de la caméra (disponibles dans le menu de débogage, sous **GUI**)
    * Vue de dessus
    * Vue derrière le volant (plutôt vue ci-dessous et derrière le kart)
    * Vue derrière le kart
    * Vue latérale du kart
* Basculer GUI (disponible dans le menu de débogage, sous **GUI**): Masquer l'interface graphique de course, pour les captures d'écran, etc.
* Masquer les karts (disponible dans le menu de débogage, sous **GUI**) (Remarque: **not** une bascule;  vous pouvez utiliser **Reset debug views** dans le menu **Graphics** pour réinitialiser.)
* Changer la cible de la caméra (disponible dans le menu de débogage sous **Set camera target**)

### Articles et pièces jointes

Vous pouvez vous offrir des objets illimités grâce au sous-menu **Items**. le sous-menu **Attachments** propose des options pour des éléments tels que les parachutes et les ancres (appelées **anvils** dans le jeu).

### Cinématiques

Le mode debogage artiste vous permet également de démarrer des cinématiques à des fins de test. Dans le menu de débogage, cliquez sur **Run cutscene** et tapez le nom du dossier contenant la cinématique (e.g. "introcutscene").

### Enregistreur d'écran en jeu

SuperTuxKart 0.9.3 et les versions ultérieures disposent d'un enregistreur intégré qui peut sauvegarder des vidéos MJPEG, VP8, VP9, ou H.264 combinées avec de l'audio Vorbis. L'utilisation de cette fonctionnalité nécessite que SuperTuxKart ait été compilé avec le support de libopenglrecorder, donc si ce support n'est pas disponible lorsque vous utilisez le paquetage de votre distribution Linux, veuillez télécharger les paquets de notre site web qui incluent cette fonctionnalité. En outre, l'enregistrement vidéo H.264 nécessite que libopenglrecorder soit compilé avec le support OpenH264, qui peut également être désactivé par votre distribution Linux en raison de problèmes de brevets (bien que grâce à Cisco, l'auteur d'OpenH264, cela ne devrait pas être un problème). L'enregistrement vidéo VP8 et VP9 nécessite l'installation de libvpx et son activation à la compilation pour libopenglrecorder.

Lorsque SuperTuxKart est compilé correctement, l'enregistrement fonctionne dès le départ. Dans la section **Enregistrement** du menu de débogage, cliquez sur '''Démarrer l'enregistrement''' pour commencer l'enregistrement et sur '''Arrêter l'enregistrement''' lorsque vous avez terminé. Lorsque vous arrêtez l'enregistreur, un message apparaît pour vous indiquer où le fichier a été sauvegardé. Notez que selon la longueur de la vidéo que vous avez enregistrée, l'encodage peut prendre un certain temps.

{%popup_info  Vous pouvez également utiliser le raccourci clavier Ctrl+PrintScreen pour démarrer et arrêter l'enregistrement.%}

Par défaut, SuperTuxKart encode en VP8 WebM. Cependant, si libvpx n'est pas disponible, il se rabattra automatiquement sur MJPEG. Ces deux formats peuvent être lus par un lecteur multimédia comme [VLC](https://videolan.org) ou convertis dans un autre format si vous le souhaitez.

#### Configuration de l'enregistreur

{%popup_info Notez que la prise en charge de macOS pour l'enregistreur n'est actuellement pas disponible.%}

Bien que les paramètres par défaut de l'enregistreur devraient fonctionner correctement dans la plupart des cas, il est possible de modifier la configuration pour obtenir des enregistrements de meilleure qualité. Consultez d’abord le [FAQ](FAQ) pour obtenir des instructions sur la recherche de votre fichier de configuration, et lorsque vous l'avez ouvert, recherchez la section Enregistrement.  Les principales options que vous souhaiterez peut-être modifier sont expliquées ici:

* **`limit_game_fps`**: Ce paramètre détermine s'il faut ralentir le rendu graphique afin de respecter le nombre d'images par seconde spécifié pour l'enregistrement.
* **`video_format`**: Ce paramètre détermine l'encodeur à utiliser pour la vidéo. 0 est VP8 (par défaut), 1 est VP9, 2 est MJPEG, 3 est H.264. MJPEG fournit la meilleure qualité d'enregistrement. VP9 n'est **pas** recommandé en raison du temps d'encodage extrêmement long (par exemple, plus de 45 minutes pour encoder moins d'une minute de vidéo). Notez que VP8, VP9 et H.264 sont encodés à partir de MJPEG car il est impossible de stocker une grande quantité de vidéo non compressée dans la RAM. Il s'agit essentiellement d'un encodage à double perte, c'est pourquoi nous suggérons de régler **`recorder_jpg_quality`** à 100.
* **`video_bitrate`**: Ce paramètre contrôle la qualité de l'encodage VP8 et VP9. Plus c'est élevé, mieux c'est, mais il n'y a pas lieu de s'emballer. La valeur par défaut est 20000.
* **`recorder_jpg_quality`**: Cette option permet de contrôler le niveau de qualité à utiliser lors de l'encodage avec MJPEG. 0 correspond à une qualité très basse, 100 correspond à la meilleure qualité (bien que la taille du fichier soit plus importante). Pour un encodage MJPEG de meilleure qualité ou pour un encodage VP8/VP9/H.264, réglez-le sur 100. La valeur par défaut est 90.
* **`record_fps`**: Nombre d'images par seconde à enregistrer. N'essayez pas d'enregistrer plus d'images par seconde que votre ordinateur ne peut en restituer. La valeur par défaut est de 30, ce qui devrait convenir à la plupart des cas.
