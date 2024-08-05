---
title: Installation d'extension (Add-Ons)
display_title: true
---
Tous les modules complémentaires officiellement approuvés peuvent être facilement installés à l'aide du gestionnaire d'extensions du jeu. Mais il est parfois nécessaire d'installer ou de supprimer manuellement une piste, un kart ou une arène. Cette page tente de fournir les informations nécessaires:

## Le dossier de stockage des extension

Depending on what system you are using, add-ons are installed in one of the following folders:

Sur Windows:

* `%APPDATA%\supertuxkart\addons`

Sur Linux:

* `~/.local/share/supertuxkart/addons`
* `/usr/share/games/supertuxkart/data/tracks` (pour les anciennes versions de STK)

Sur Mac OS X:

* `~/Library/Application Support/SuperTuxKart/Addons`

## Installation et suppression

Dans ce dossier, les fichiers et sous-répertoires suivants existent: icons, karts, tmp, tracks, addons.xml, addons_installed.xml, news.xml

Pour installer une extension, il suffit de copier l'ensemble du dossier contenant l'extension dans le sous-répertoire correspondant. Notez que les arènes vont dans le dossier des pistes car elles sont techniquement des pistes.

La désinstallation se fait en supprimant ce dossier.

De plus, `/installaddon` et `/uninstalladdon` peuvent être utilisés dans le lobby réseau pour installer ou désinstaller des modules complémentaires.
