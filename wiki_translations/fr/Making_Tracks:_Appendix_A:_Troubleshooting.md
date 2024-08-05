---
title: 'Faire des Pistes: Annexe A: Dépannage'
display_title: true
---
Bien que le processus de construction de pistes soit généralement assez simple et que les exportateurs fonctionnent généralement bien, des problèmes peuvent survenir. Si vous ne trouvez rien d'utile sur cette page, n'hésitez pas à rechercher votre problème ou à demander de l'aide sur le [forum](https://forum.freegamedev.net/viewforum.php?f=16). N'oubliez pas de lire également la page [Communication](Communication) si vous postez des messages sur le forum.

{% start_liquid qa %}

Mes karts AI quittent la route !

Les raisons peuvent être multiples :

* Votre transmission est mal placée.
* Votre transmission présente une rupture. 
* Votre route prend un virage trop serré. 
* Votre route est trop étroite.

Essayez de corriger les problèmes qui se présentent et voyez si cela vous aide.

{% end_liquid %}

{% start_liquid qa %}

Les karts AI sont sauvés de façon aléatoire ou lorsqu'ils sont lancés par une fermeture éclair(zipper).

Pour décider s'il faut secourir un kart, SuperTuxKart effectue des projections de rayons pour déterminer si le kart se trouve sur une surface ou non. Lorsqu'un kart est lancé par une fermeture éclair sans aucune surface en dessous, STK détectera que le kart est hors de la piste et doit être secouru. Pour éviter cela, créez une zone de faible densité sous la surface de conduite principale ou la trajectoire de lancement afin que STK ne détecte pas un besoin de sauvetage faussement positif. Texturez la surface avec une texture transparente ou définissez-la comme physique uniquement. Voir [Physique#Interaction Kart Objet](Physics/#interaction-kart-objet)  pour plus d'informations.

{% end_liquid %}

{% start_liquid qa %}

Les décorations transparentes ou translucides n'apparaissent pas correctement dans le jeu!

Il s'agit probablement d'un problème de tri. Essayez d'exporter les parties transparentes en tant qu'objets séparés ("Object" dans le panneau des propriétés d'objet de SuperTuxKart dans Blender). Si votre section transparente comprend une partie de la zone de conduite principale, assurez-vous de cocher la case "Driveable" dans le panneau des propriétés d'objet de SuperTuxKart. Assurez-vous également que la case "Disable writing to Z-buffer" est cochée pour toutes les textures transparentes ou partiellement transparentes dans le panneau SuperTuxKart Image Properties.

{% end_liquid %}

{% start_liquid qa %}

Les objets transparents s'affichent bizarrement dans Blender!

Dans Blender pour voir la transparence, changé le "mode de fusion" dans **Paneau de propriété > Matériau > Réglage > mode de fusion**, choisir selon les cas "Mélange Alpha" -> alpha graduer ou "Seuil alpha" -> entre 1-0.5 transparent 100% et <0.5 100% Opaque

{% end_liquid %}

{% start_liquid qa %}

Mon kart glisse et je ne peux pas diriger/accélérer correctement!

Si ce n'est pas déjà fait activer "High tires adhesion" et/ou "Affect gravity"; Sinon il s'agit très probablement d'une conséquence du lissage des normales. Désactivez le lissage normal dans le panneau des propriétés de la scène de SuperTuxKart.

{% end_liquid %}

{% start_liquid qa %}

Mon kart s'envole en l'air lorsque j'essaie de jouer sur ma piste!

Il est probable que votre piste soit trop étroite ou que vous ayez trop de karts par rangée sur la ligne de départ. Lorsque le [Mode débogage artiste](Artist_Debug_Mode) est activé, si vous êtes placé en l'air, vous commencerez à voler ; si le Artist Debug Mode n'est pas activé, le jeu plantera. Il y a trois façons de résoudre ce problème :

* Élargir la piste au niveau de la ligne de départ.
* Réduisez la valeur de **Karts per row** au départ sous **Start line positions** dans le panneau des propriétés de scène SuperTuxKart.
* Réduisez la valeur de la **Start sideways distance** dans la même section que ci-dessus.

Une autre possibilité est que les normales de votre piste soient du mauvais côté. Pour vérifier si c'est le cas, passez en mode édition sur le maillage de votre piste, développez votre menu **Viewport Overlays** en haut à droite, tout en bas vous trouverez des boutons pour activer les recouvrements **Normals**. Aussi vous pouvez simplement coché **orientation des faces**, la partie qui sera visible en jeu apparait en bleu et la partie non-visible en rouge.
Si elles apparaissent (en bas du maillage/en rouge sur une suface praticable), sélectionnez le(s) face(s) que vous souhaitez corriger, et allez dans **Maillage > Normales > Inverser**.

![Display_normals]({{ '/assets/wiki/Display_normals.jpg' | prepend: site.baseurl }})

{% end_liquid %}

{% include art_portal %}
