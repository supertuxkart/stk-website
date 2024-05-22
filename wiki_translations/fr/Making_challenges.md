---
title: Faire des défis
toc: true
---
Cette page explique comment les fichiers de défis sont écrits et comment s'assurer qu'ils apparaissent dans le jeu.

## Créer et placer le fichier

Le plus simple est de copier un fichier .challenge déjà existant et de le modifier à votre convenance. Les fichiers se trouvent dans différents dossiers de pistes, et vous devez placer votre propre fichier dans un dossier de piste non vide pour que STK le trouve. Voir [cette page](Installing_Add-Ons) si vous ne savez pas où se trouvent les dossiers de pistes. S'il est placé et formaté correctement, vous devriez voir votre défi avec les autres dans l'entrée 'Défis' du menu principal. Si vous ne le trouvez pas, lancez le jeu à l'aide d'un terminal et voyez si des avertissements s'affichent.

Le jeu crée automatiquement une entrée pour votre défi dans le fichier **players.xml** au moment de l'exécution du jeu. Pour trouver ce fichier, reportez-vous à la question "Où est stockée la configuration ?" dans la [FAQ](FAQ). Donc si vous avez créé un défi avec `id="mychallenge"`, il devrait y avoir une ligne `<mychallenge solved="false" />` dans **players.xml**. Remplacez simplement cette ligne par *false* si vous avez besoin de tester le déverrouillage plus tard, par exemple si vous modifiez *unlock-track* après avoir relevé le défi. Gardez à l'esprit que si vous modifiez un défi, SuperTuxKart peut cesser de fonctionner et vous devrez restaurer l'ancien fichier de défi.

## Liste des attributs XML

{% wikitable %}

| Name         | Description                                                                                                                                              |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| id           | Identification unique par laquelle STK connaît le défi. Cette identification peut être utilisée pour d'autres défis.                                     |
| name         | Nom descriptif court pour le défi. S'affiche au-dessus de la description principale.                                                                     |
| description  | Description complète du défi.                                                                                                                            |
| unlock-track | Trace que le défi débloque s'il est résolu. Il s'agit actuellement d'une exigence à remplir, si aucune autre propriété de déverrouillage n'est utilisée. |
| unlock-gp    | Grand Prix que le défi débloque s'il est résolu.                                                                                                         |
| unlock-mode  | Mode de jeu que le défi débloque s'il est résolu. Par exemple, *FOLLOW_LEADER*.                                                                          |
| depend-on    | Identifiant(s) de l'épreuve dont dépend l'épreuve pour être affichée. Cet attribut n'est pas obligatoire.                                                |
| major        | Type de mode de jeu principal. Actuellement, les modes majeurs possibles sont *tout*, *grandprix* et *simple*.                                           |
| minor        | Type de mode de jeu mineur. Actuellement, les modes mineurs possibles sont *suivre le meneur*, *épreuve de temps* et *course rapide*                     |
| track        | Suivre le lieu où se déroule le défi.                                                                                                                    |
| difficulty   | Mode de difficulté de la course. Par exemple, *moyen*.                                                                                                   |
| karts        | Nombre de kart.                                                                                                                                          |
| laps         | Nombre de tour.                                                                                                                                          |
| position     | Grade exigé.                                                                                                                                             |
| energy       | Nombre de points d'énergie/nitro à collecter. Cet attribut n'est pas obligatoire.                                                                        |
| time         | Temps maximum en secondes.                                                                                                                               |
