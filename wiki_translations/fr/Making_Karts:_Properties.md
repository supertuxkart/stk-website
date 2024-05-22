---
title: 'Faire des Karts: Propriétés'
display_title: true
---
Lorsque vous ouvrez Blender avec l'addon SuperTuxKart installées, vous constaterez que de nouveaux menus ont été ajoutés. Sous **Scène** dans la fenêtre Propriétés, vous trouverez **Export Kart**, **Export Track**, **SuperTuxKart Scene Properties**, et **SuperTuxKart Image Properties**. Toujours dans la fenêtre Propriétés, sous **Objet**, vous trouverez **SperTuxKart Object Properties**. Si vous ne les voyez pas, reportez-vous à la page [Installing Tools](Installing_Tools).

Après avoir ouvert Blender sur un nouveau fichier vide, allez dans **le paneau de propriété > scène SuperTuxKart Scene Properties** et cochez la case "Is a SuperTuxKart kart" (est un kart SuperTuxKart). Un bref aperçu des options les plus obscures se trouve ci-dessous. Rappelez-vous, vous pouvez toujours regarder les fichiers .blend dans le [Dépôt multimédia](Media_Repo) pour exemples.

{% single_gallery /assets/wiki/Kart_panel.jpg %}

* **Name:** Nom de votre Kart
* **Group:** Ceci détermine dans quel groupe le kart est trié sur l'écran de sélection des karts. S'il s'agit d'un kart d'extension, il doit être mis à `Add-Ons`. Si vous créez un kart qui sera distribué dans le jeu principal, mettez-le à `standard`.
* **Icon:** Nom d'un fichier image de 128×128 pixels (y compris l'extension du fichier) qui sera utilisé pour le kart sur l'écran de sélection du kart et ailleurs dans l'interface graphique. Ce fichier devra être placé dans le même dossier que les modèles que vous exportez lorsque vous avez terminé votre kart. Voir [Faire des Karts: Icônes](Making_Karts:_Icons) pour plus d'informations.
* **Minimap Icon:** En général, ce champ est le même que "Icon", mais si vous avez une icône de personnage détaillée qui ne sera pas belle à voir lorsqu'elle sera réduite pour tenir sur la minimap, faites-en une version moins détaillée.
* **Shadow:** Nom de fichier d'une image qui sera utilisée comme ombre lorsque les ombres dynamiques ne sont pas activées. Vous pourrez créer ce fichier plus tard, lorsque vous aurez terminé votre kart. (Le tutoriel est lié à l'index des tutoriels sur les karts).
* **Color:** Couleur d'arrière-plan de l'icône. Utilisez le bouton de sélection des couleurs situé à côté de ce champ pour choisir une couleur plus facilement.
* **Gravity Center Shift:** Vous pouvez régler cette valeur sur une valeur inférieure à zéro pour rendre le kart plus stable en abaissant le centre de gravité.
* **Engine sound:** Volume sonore du moteur.
* **Skid sound:** Vous pouvez définir un son de dérapage personnalisé pour votre kart via la syntaxe xml, pour Pepper (montré ci-dessus) il imite le son du vent lors du dérapage, écrivez `default` ici pour utiliser le son de dérapage par défaut dans STK, laissez-le vide pour désactiver le son de dérapage.
* **Type:** C'est le poids du kart pour le moteur physique. Il détermine à quel point il peut faire tomber les autres karts, à quelle vitesse il peut accélérer et quelle est sa vitesse maximale.
* **Lean max:** Il s'agit du nombre de degrés d'inclinaison d'un kart lorsqu'il roule à pleine vitesse dans un virage serré. Les véhicules à quatre roues traditionnels ont tendance à prendre du roulis et à s'incliner vers l'extérieur dans un virage, tandis que les motos et autres véhicules similaires s'inclinent vers l'intérieur. Les valeurs négatives indiquent une inclinaison vers l'intérieur, tandis que les valeurs positives indiquent une inclinaison vers l'extérieur. Zéro désactive tout roulis. Laissez le champ libre pour utiliser la valeur par défaut (inclinaison vers l'extérieur).
* **Exhaust Particles File:** Le fichier de particules pour la simulation de la fumée d'échappement. `kart_exhaust.xml` produira des bouffées régulières de fumée grisâtre, laissez-le vide pour désactiver l'échappement.

{% include art_portal %}
