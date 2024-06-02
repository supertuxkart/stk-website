---
title: 'Faire des Pistes: Propriétés'
display_title: true
---
Lorsque vous ouvrez Blender avec les addons SuperTuxKart installés, vous verrez que de nouveaux menus ont été ajoutés. Sous **Scène** dans la fenêtre Propriétés, vous trouverez **Export Kart**, **Export Track**, **SuperTuxKart Scene Properties**, et **SuperTuxKart Image Properties**. Toujours dans la fenêtre Propriétés, sous **Objet**, vous trouverez **SuperTuxKart Object Properties**. Si vous ne les voyez pas, reportez-vous à la page [Installation des outils](Installing_Tools).

## Paramétrage des propriétés de la piste

La première chose à faire est de cocher la case **Is a SuperTuxKart track** dans **SuperTuxKart Scene Properties**. De nombreuses autres options apparaissent alors dans le panneau des propriétés de la scène.

### Propriétés de base

Définissez tout de suite ces propriétés afin de pouvoir exporter votre piste:
* Dans le panneau **Quick Exporter**, cliquez sur le bouton "dossier" pour définir le chemin d'accès aux actifs. Cela peut être le dossier `stk-assets` ou `data`, ou le dossier `addons`. Lors de l'exportation de votre piste, l'exportateur de piste créera un dossier appelé `tracks` à partir de ce chemin. A l'intérieur de ce dossier se trouvera un autre dossier contenant votre piste.
* Dans les propriétés de scène SuperTuxKart, définissez les éléments suivants:
    * Le nom de la piste
    * Le nom du dossier
    * Le groupe: si vous créez une piste pour le site web Add-On, réglez-le sur **Add-Ons**. Si vous espérez que votre piste fasse partie du jeu principal, réglez-le sur **standard**.
    * Le concepteur: il peut s'agir de votre nom complet ou d'un pseudonyme, si vous souhaitez rester semi-anonyme.

### Propriétés optionnelles

Vous souhaiterez peut-être définir ces propriétés lorsque vous aurez progressé sur votre piste, mais il n'est pas nécessaire de les modifier puisqu'elles ne sont pas nécessaires pour que la piste soit utilisable.
* **Music:** Le fichier `.music` est à utiliser pour la musique de fond. Voir [Directives pour musique et effets sonores](Music_and_SFX_Guidelines).
* **Screenshot:** Cette image sera affichée dans le menu de sélection des pistes. Il doit s'agir d'une image au format 4:3 mise à l'échelle sur une image 1024 × 1024. En effet, les cartes graphiques s'attendent à ce que les textures aient des puissances de deux côtés.
* **Camera far clip:** Il s'agit de la distance de rendu, ou de la distance de la caméra à laquelle les objets cessent d'être visibles (sans activation du brouillard, **il n'y a pas** de transition progressive). Pour les pistes intérieures, cette distance peut être réduite pour améliorer les performances, mais si vous créez une piste extérieure avec des nuages, vous devrez peut-être augmenter la distance de rendu.
* **Under Driving/laps:**
    * **Can be driven in reverse:** Si cette case est cochée, l'option de conduite en sens inverse sera activée. Si des sauts ou d'autres obstacles empêchent le joueur de reculer le long de la piste, n'activez pas cette option.
    * **Number of laps:** Le nombre de tours par défaut. Les pistes courtes devraient avoir un plus grand nombre de tours par défaut, tandis que les pistes longues devraient en avoir moins.
* **Under Start line positions:** Les informations intégrée à ces options devraient suffire. Si SuperTuxKart se plante lorsque vous essayez de démarrer votre circuit, cela peut être dû à une zone de départ insuffisamment large. Vous pouvez réduire le nombre de karts autorisés par rangée ou ajuster l'espace autour des karts avec ces options.

{%popup_info N'hésitez pas à consulter les autres options et à vous familiariser avec leur configuration, mais ne les modifiez PAS. Si vous oubliez les propriétés que vous avez modifiées précédemment, vous passerez trop de temps à essayer de les corriger plus tard.%}

{% include art_portal %}
