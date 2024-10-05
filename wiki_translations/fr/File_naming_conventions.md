---
title: Conventions de nommage des fichiers
toc: true
---
Il s'agit d'une proposition de nommage qui fait actuellement l'objet de discussions.

## Nom de Kart

Le nom du répertoire d'un kart doit être le nom "évident" en minuscules (par exemple, "nolok" pour Nolok). N'utilisez pas d'espace (utilisez plutôt _). Les noms des répertoires servent d'identifiants pour les karts dans le jeu (et peuvent être utilisés en ligne de commande).

Notez que tux, gnu et nolok sont spéciaux :

* Gnu et nolok sont verrouillés au début du jeu, et sont donc référencés dans divers défis (voir dans data/challenges).
* Nolok a des pouvoirs spéciaux (bubble gum et swatter), le jeu recherche donc un jeu avec l'identifiant "nolok" (voir attachment.cpp, item_manager.cpp, powerup.cpp, swatter.cpp, kart.cpp).
* Tux est le kart par défaut si aucun fichier de configuration n'est trouvé (user_config.hpp), il est également utilisé dans le cas où le mode démo de STK est activé (demo_world.cpp), et pour assigner une icône au joueur (player_profile.cpp).

## Nom de Piste

Le nom du répertoire d'une piste doit être le nom "évident" en minuscules (par exemple, "minigolf" pour Minigolf). N'utilisez pas d'espaces (utilisez plutôt _). Les noms des répertoires servent d'identifiants pour les pistes dans le jeu (et ils peuvent être utilisés sur la ligne de commande). Par conséquent, le fait de renommer une piste affecte divers autres paramètres :

* L'identifiant "olivermath" est utilisé comme piste par défaut pour le fichier de configuration utilisateur, s'il n'existe pas de fichier de configuration utilisateur (user_config.hpp).
* Les identifiants sont utilisés pour définir les défis (voir data/challenges).
* Les identifiants sont utilisés pour définir les GP's (voir data/gp).
* Ils peuvent être utilisés dans les achives (voir data/achievements.xml). À ce stade, la réalisation "Christoffel Columbus" utilise au moins des identificateurs de piste.

## Textures

Toutes les textures doivent utiliser la même convention de nommage.

Le nommage est organisé selon le modèle suivant: préfixe_nom_suffixe.extension

* Le préfixe stk_ est nécessaire lorsque la texture est globale (dans le référentiel data/textures).
* Le nom doit être en minuscules, les mots séparés par _ (ceci_est_un_exemple). Le premier mot doit être celui qui décrit le mieux la texture. Par exemple, si vous avez une texture avec un mur rouge, un bon nom est mur_rouge. Cela permet de retrouver rapidement les textures dans un répertoire.
* Le suffixe est utilisé pour décrire la fonction de la texture.
    * diff = diffus (diffuse)
    * lm = carte de lumière (lightmap)
    * spec = carte spéculaire (specular map)
    * mask = masque de [Colorisation](Materials/#colorisation) (Colorization mask)
    * normal = carte des normales (normal map)
    * ao = occlusion ambiante (ambient occlusion)
    * Par défaut, rien signifie diffus
