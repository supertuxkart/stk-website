---
title: Directives pour musique et effets sonores
display_title: true
---
**Tous les fichiers audio de SuperTuxKart doivent être au format Ogg Vorbis (.ogg).**

## Musique

D'un point de vue stylistique, la musique de SuperTuxKart doit être cartoonesque et rebondissante. Bien que le jeu ait une ambiance positive et légère, essayez d'éviter les musiques trop neutres et douces - il y a encore de la place pour quelques moments intenses ou agressifs, tant que l'ambiance cartoonesque est maintenue. Pour l'essentiel, concentrez-vous sur la mélodie et la progression harmonique, plutôt que de créer des musiques purement rythmiques ou trop ambiantes.

Une bonne durée est généralement comprise entre 60 et 90 secondes, et la musique doit tourner en boucle de manière fluide. La musique peut revenir au début ou à un point spécifié dans le fichier .music (voir ci-dessous). SuperTuxKart permet également de jouer différents fichiers musicaux pendant les derniers tours des courses. Une variation 'dernier tour' de la musique d'une piste est juste une version plus rapide de la musique normale.

Le nom de l'auteur (ou les noms des auteurs) doit être intégré dans les métadonnées du fichier .ogg. Si vous apportez une modification importante au fichier pour lequel vous souhaitez être reconnu, vous pouvez ajouter votre nom ou l'ajouter au champ des commentaires dans les métadonnées. Les autres métadonnées, telles que le nom de la chanson ou l'année, sont facultatives.

### fichier .music

Les fichiers .music indiquent à SuperTuxKart comment jouer la musique. Ces fichiers doivent être placés dans le même répertoire que le fichier .ogg. Voici un exemple du contenu d'un fichier .music:

{%popup_code
xml
<?xml version="1.0"?>
<music title = "Sky Vibe - High Frequency"
     composer = "Speedsound"
         gain = "0.5"
         file = "SkyVibe-HighFrequency.ogg"/>%}

* **title** et **composer** sont affichés dans le jeu lorsque la course commence, si la musique doit être jouée pendant la course.
* **gain** contrôle le volume de la musique. "1" correspond au volume original, "0,5" à la moitié du volume, etc.
* **file** est le nom du fichier .ogg contenant la musique.

Autres paramètres optionnels:

* **loop-start** indique au jeu où revenir dans le fichier audio une fois la fin atteinte. Il est mesuré en secondes, mais peut inclure des décimales, ce qui permet d'obtenir des incréments plus précis tels que des millisecondes. Si ce champ n'est pas renseigné, le jeu reprend la musique en boucle depuis le début.
* **loop-end** indique au jeu quand boucler le fichier audio. Il est mesuré de la même manière que le champ loop-start. Le jeu joue la musique dans son intégralité si ce champ est absent.
* **fast** contrôle si la musique a une variation au dernier tour ou non, utilisée pendant les courses. Si fast = "true", le jeu lit un autre fichier .ogg contenant la musique accélérée (spécifié dans le champ suivant), ou si ce fichier n'est pas trouvé, il tente d'accélérer la musique elle-même en augmentant la vitesse de lecture (malheureusement, cela ne semble pas idéal). Si fast = "false", la musique ne changera pas pour le dernier tour.
* **fast-filename** est le nom du fichier .ogg accéléré si fast = true.
* **fast-loop-start** est identique au loop-start, mais pour la musique du dernier tour.
* **fast-loop-end** est identique à loop-end, mais pour la musique du dernier tour.

Au démarrage, SuperTuxKart lit tous les fichiers .music depuis:

* ../data/music
* ../data/tracks/(nom de la piste)
* Tous les répertoires spécifiés dans la variable d'environnement SUPERTUXKART_MUSIC_PATH, qui est une liste séparée par des ":". Par exemple: SUPERTUXKART_MUSIC_PATH=/home/user1/ogg:/usr/share/ogg (Pour les utilisateurs de Windows, l'utilisation des lettres de lecteur fonctionne comme prévu, par exemple: c:/myoggs:d:/moreoggs)

Si vous voulez entendre votre musique dans le jeu pendant une course, vous devez modifier le fichier track.xml de la piste que vous voulez jouer. Ces fichiers se trouvent dans ../data/tracks/(nom de la piste). Trouvez le champ 'music' et remplissez-le avec le nom du nouveau fichier .music. Vous pouvez ensuite ajouter les nouveaux fichiers .ogg et .music dans ../data/music, ou dans le dossier de la piste que vous souhaitez lancer.

## Effets sonores

Les SFX du jeu doivent refléter son attitude légère et cartoonesque. Les sons de position doivent être mixés en mono.
