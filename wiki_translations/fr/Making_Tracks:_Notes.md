---
title: 'Faire des Pistes: Notes'
toc: true
---
{%popup_info Cette page contient des directives et des informations sur la création de pistes qui s'appliquent à plusieurs sections. D'autres sections peuvent énumérer leurs propres directives pour un sujet spécifique.%}
<div><br/></div>

## Blender

Blender est actuellement utilisé pour toutes les pistes détaillées et de qualité professionnelle de SuperTuxKart. Bien que Blender soit très avancé, et en fait assez facile à utiliser une fois que l'on s'y est habitué, il peut être intimidant pour les nouveaux utilisateurs et une piste SuperTuxKart n'est **<u>pas</u>** un bon point de départ pour ceux qui n'ont jamais utilisé Blender.

## Structure de fichier

Afin que les autres utilisateurs puissent ouvrir votre fichier Blender sans manquer de textures, il est important d'avoir une structure de fichier standardisée. Le fichier projet Blender de votre piste doit se trouver dans un dossier situé **à l'intérieur** du dossier **`tracks`** du [dépôt multimédia](Media_Repo). Oui, *même si vous ne vous attendez pas à ce que votre piste soit incluse dans le jeu principal, placez le dossier de votre piste à l'intérieur du dépôt de médias comme s'il faisait déjà partie du jeu principal. C'est important dans tous les cas car cela permet aux autres artistes de savoir où ils doivent aller pour que Blender puisse trouver toutes les bonnes textures.

## Échelle de mesure

Il est important de savoir comment les tailles dans Blender se traduisent dans STK, en particulier pour la route. (Plus de références peuvent être trouvées sur la page [Directives pour les modèles 3D](3D_Model_Guidelines)). Voici quelques références:

* Une piste typique (par exemple, Antediluvian Abyss) fait environ 12 unités Blender de large à une section moyenne.
* Certaines pistes ont des sections très larges. Par exemple, la largeur de la route au début de Cocoa Temple est de ~18 unités Blender.
* Des pistes comme Blackhill Mansion ont certaines sections (comme le chemin à travers le cimetière) qui sont aussi étroites que 8 unités de large.

## Directives Polycount(nombre de polygone)

*Pour plus de détails sur le polycount, ainsi que des exemples de décorations, voir [Directives pour les modèles 3D](3D_Model_Guidelines).*

* Le polycount d'une piste doit être d'environ 290000 tris. Cocoa Temple dépasse cette limite avec 295058 tris, mais Cocoa Temple est une piste exceptionnellement grande et compliquée. Votre piste ne devrait pas dépasser cette limite à moins que cela ne soit ***<u>ABSOLUMENT</u>**'' nécessaire. (Dans ce cas, "***<u>ABSOLUMENT</u>**'' nécessaire" signifie que votre piste est aussi détaillée ou plus que Cocoa Temple, qu'elle a la même qualité ou une meilleure qualité, et qu'elle ne gaspille pas inutilement du poly). La plupart des pistes ne s'approcheront même pas de cette limite. Antediluvian Abyss, par exemple, utilise 230810 tris, et Gran Paradiso Island utilise 235411 tris.
* Utilisez un équilibre approprié entre les objets à haute et à basse densité. Les objets partiellement recouverts et ceux qui sont toujours vus de loin doivent être en low poly. 
* Éviter les objets inutiles. Les objets qui ne peuvent pas être vus ou qui ne seraient pas remarqués s'ils étaient absents doivent être évités.

{% single_gallery widths=48%
/assets/wiki/Detail_distant_compared_to_near.jpg,"La clôture, la végétation et l'eau sont détaillées près de l'endroit où les karts roulent, mais plus loin, la clôture est très basique, il n'y a pas de végétation et l'eau n'a pas de fond, seulement la skybox."
/assets/wiki/Player_point_of_view.jpg,"Du point de vue du joueur, on ne remarque pas le manque de détails au loin."
%}

## Jouabilité 

La jouabilité est importante à prendre en compte lors de nombreuses étapes du processus de fabrication des pistes: lors de la conception de la piste, lors de sa modélisation, lors des tests, lors de la mise en place des décorations, etc. De nombreux modules renvoient à cette section en tant que référence, vous devriez donc prendre le temps de lire attentivement ces lignes directrices:

* Chaque piste doit avoir une voie principale assez équilibrée et pas trop difficile à conduire. Certaines pistes seront bien sûr plus difficiles que d'autres, mais les sections les plus difficiles doivent être réservées aux routes secondaires et aux raccourcis.
* Les pistes les plus faciles ne doivent pas comporter de virages nécessitant une manœuvre de dérive. Faites des virages en dévers si nécessaire ! 
* Les routes alternatives ne devraient pas permettre de prendre un raccourci à moins qu'il n'y ait une sorte de risque à prendre le raccourci. Par exemple, il existe un raccourci sur l'île du Grand Paradis, mais le joueur risque de tomber dans l'eau.
* Récompenser les joueurs qui essaient quelque chose d'inhabituel avec des objets ou un raccourci. Par exemple, le Jardin Zen contient des nitros cachés si vous faites attention.
* Utiliser des objets ou des nitros pour aider à marquer le chemin, si nécessaire.
* Il devrait TOUJOURS être très clair où vous êtes autorisé à aller et quelles sont les zones interdites. Cela ne veut pas dire que la piste ne peut pas ressembler à un labyrinthe, mais le joueur doit toujours savoir où se trouve la driveline principale, bien que des routes alternatives puissent également être visibles. Le joueur doit toujours savoir où se trouve la ligne de conduite principale, même si des itinéraires alternatifs peuvent également être visibles (c'est-à-dire que ce qui constitue la zone de conduite doit être clairement visible, même si, bien sûr, il peut y avoir plus d'un chemin menant à la ligne d'arrivée).
* Essayez de ne pas interrompre le rythme de la piste, imaginez la piste comme une rivière qui s'écoule, vous devriez éviter les sections "turbulentes".
* Dans la plupart des cas, vous devriez éviter de rendre la piste trop étroite - lorsque vous jouez avec de nombreux karts IA, cela entraînera de nombreuses collisions frustrantes entre les karts.
* Évitez de rendre la piste trop longue. Plus de 1:30 est définitivement trop long ; entre environ 1 minute et 1 minute 30 secondes est considéré comme approprié pour un tour sans utiliser de boosters et d'autres éléments (comme la nitro).
* Essayez toujours de trouver un bon équilibre entre les lignes droites et les virages. Trop de lignes droites peuvent être ennuyeuses, mais trop de virages (surtout ceux qui sont très serrés) rendront la piste difficile à conduire.
* Il doit y avoir beaucoup d'espace pour atterrir après un saut - faites en sorte que la piste soit assez large. Cocoa Temple en est un bon exemple.

## Style

"Quoi ?!" dites-vous ? Le style n'a-t-il pas été abordé sur la page Style ? Ces directives sont spécifiques aux pistes, et permettent donc de réduire la bruyance pour les autres types d'artistes

* Lorsque vous créez une piste, choisissez une palette de couleurs composée d'une ou deux couleurs seulement pour définir le thème de la piste. Vous pouvez évidemment utiliser différentes variations de couleurs pour ajouter de la variété, et un tonneau rouge sera toujours rouge, quelle que soit votre palette. Mais pour que la piste reste cohérente, vous devez utiliser les mêmes couleurs tout au long de la piste. Les couleurs principales dans Antediluvian Abyss, par exemple, sont le bleu et le gris.
* En complément de la note sur les palettes de couleurs ci-dessus, le style de chaque piste doit être cohérent. Bien que votre piste puisse comporter plusieurs sections, le thème principal ne change pas. Cocoa Temple en est un bon exemple.
* Évitez les façades qui ont l'air affreuses dès qu'un kart quitte la route. Votre piste doit avoir un beau paysage. La nouvelle version de STK dispose d'une vue de rendu de 16km si nécessaire.

## A propos de l'inclusion de votre piste dans le projet principal

La qualité visuelle de SuperTuxKart n'a cessé de s'améliorer de version en version. Nous devons donc dire que nous ne pouvons malheureusement pas accepter les contributions de tout le monde (mais vous pouvez les publier sur le [STK Add-ons](https://online.supertuxkart.net)). Il est important d'améliorer l'aspect visuel pour obtenir un jeu de haute qualité. C'est pourquoi, en général, seules les contributions de personnes ayant une bonne expérience de Blender seront intégrées au jeu principal. Si vous êtes nouveau dans Blender, vous êtes libre (et même bienvenu) d'essayer d'apprendre en faisant des pistes ; cependant, il faut dire dès le début qu'à moins que vous n'appreniez très vite ou que vous ayez un talent naturel, vos (premières ?) pistes n'iront probablement pas dans le jeu principal. Notez cependant que rien ne vous empêche de publier vos propres add-ons sur les forums ou le site Add-On, pour les partager avec les autres.

N'oubliez pas non plus de lire la section [Communication](Communication). Le respect des règles qui y sont énoncées contribuera à faire de la communauté un endroit plus joyeux et plus convivial.

{% include art_portal %}
