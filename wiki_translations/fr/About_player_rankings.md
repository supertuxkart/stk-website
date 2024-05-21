---
title: À propos du classement des joueurs
toc: true
---
(Cette page est obsolète et peut ne pas refléter les dernières spécifications)
## Principes généraux

Le système de classement des joueurs est basé sur un système d'échange de points entre joueurs, globalement similaire à ELO.

De nouveaux points sont introduits dans le système lorsque de nouveaux joueurs commencent à jouer, mais ils sont ensuite partagés entre un plus grand nombre de joueurs, ce qui permet de contrôler le nombre de points qu'un joueur peut avoir (même si, au fil du temps, les joueurs cessant d'être actifs entraîneront une perte de points. une légère inflation de points).

Une fois qu'un joueur a reçu tous ses points de base, l'évolution de ses points dépend entièrement de la perte ou du gain de points face aux autres.

Vous pouvez visiter [classement STK](https://online.supertuxkart.net/rankings.php) pour voir le classement actuel des joueurs.

## Base de Répartition des points

Un joueur peut recevoir un total de 4 000 points de base.  Chaque nouveau joueur reçoit d'abord 2 000 points du serveur classé.  Les 2000 autres sont répartis progressivement au cours des 45 premières courses [^1].

L’objectif de la répartition progressive est double:
* Réduire l’inflation des points, pour que les mauvais joueurs ne faisant que quelques courses classées donnent beaucoup moins de points aux autres joueurs (en ayant moins de points à distribuer au départ et en ayant un résultat attendu moins bon).
* S'assurez que, pour la grande majorité des joueurs, leurs points stabilisés après un certain temps de jeu soit supérieurs aux points de quelqu'un n'ayant pas encore fait de course.

## Règles d'échange de points

La majeure partie de l'évolution des points, et ce qui lui permet d'être utilisé comme outil de classement, se produit dans cette étape.

Aux fins d'échange de points, chaque course à N-joueurs est considérée comme un ensemble de courses à 2-joueurs ;  les joueurs étant comparés par paires.

Chaque paire donnera ensuite lieu à un échange de points, l'un gagnant exactement autant que l'autre perdant.

Le changement final de points pour un joueur est la somme de tous les points échangés entre un joueur et tous les autres.  Ces ajouts ne sont effectués qu'une fois que tous les changements de points ont été calculés.

## Résultats

Pour chaque paire de joueurs commandée, un résultat est calculé. Cela dépend uniquement du temps d'arrivée de chaque joueur. Si un joueur A met 1025 fois plus de temps pour terminer que le joueur B, alors le résultat de A (contre B) est 0. Si B prend plus de 1025 fois le temps de A pour terminer, le résultat de A est 1. Si les deux prennent le même temps, le résultat est 0,5. Le résultat est mis à l'échelle linéairement entre ces points[^2].

Si un joueur abandonne avant d'avoir franchi la ligne d'arrivée et vu son kart gagner ou perdre l'animation, son résultat est automatiquement 0.

## Résultats attendus

Les points de classement actuel des deux joueurs d'une paire ordonnée sont utilisés pour calculer un résultat attendu. Le nombre absolu de points n'a pas d'importance, les résultats attendus dépendent uniquement de la différence entre les deux montants [^3]. Un joueur ayant plus de points aura un résultat attendu plus élevé. Les résultats attendus n’atteignent jamais 0 et 1, mais ils peuvent s’en rapprocher. Les résultats attendus visent à prédire avec une certaine précision un score moyen sur un nombre significatif de courses; il ne s'agit pas de prédire le score d'une seule course, car voir les deux joueurs terminer avec un temps différenciel inférieur à 2,5 % ne sera pas le cas le plus courant.

Le résultat attendu est ensuite comparé au résultat réel. Un joueur ayant sous-performé par rapport à son résultat attendu perdra des points, tandis qu'un joueur ayant surperformé gagnera des points [^4]. Cela donne le résultat.

## Importance des scores de course

Pour obtenir le changement de score final dans une paire de joueurs ordonnée, l'importance du classement de la course est calculée.

C'est le résultat de la multiplication de plusieurs facteurs:
* La durée de la course [^5]
* Le mode course [^6]
* Les points les plus élevés obtenus par les joueurs et le nombre de courses qu'ils ont effectuées [^7]

L'importance de classement est ensuite multipliée par le résultat de notation pour obtenir le nombre de points de changement pour la paire de joueurs ordonnée.

## Annexe - détails techniques
 
Les points (et le nombre maximum de points obtenus) sont stockés au format virgule flottante double précision. L'utilisation d'entiers discrets créerait des erreurs d'arrondi importantes et générerait des effets de seuil indésirable; tandis que les flotteurs en simple précision accumuleraient trop facilement des erreurs au fil du temps et généreraient des créations/destructions de points indésirables (une seule course peut voir plusieurs dizaines d'échanges de points).

[^1]: Le nombre de points de base attribués n'est pas constant, mais dégressif.  Il suit la formule : `max(2 * (45 - number_races_played), 8)`

[^2]: Si A termine avant B, la formule utilisée est `min(1, 0.5 + (b_total_time - a_total_time) / (a_total_time / 20))`.  Sinon, c'est `max(0, 0.5 - (a_total_time - b_total_time) / (b_total_time / 20))`.

[^3]: Le résultat attendu pour le joueur A est `1 / (1 + 10 ^ (diff / 2000))`, où diff est `(rank_player_B - Rank_player_A)`. Un avantage de `2000` points pour le joueur A correspond à un résultat attendu de `~0,909`.

[^4]: La formule ici est simplement `(result - expected_result)`.

[^5]: Le temps utilisé pour la mise à l'échelle est donné par `min(max(playerA_time, playerB_time), max_scaling_time)`; le temps de mise à l'échelle maximum étant de 500 s.  Si un joueur a abandonné, le temps de mise à l'échelle maximum est automatiquement utilisé, ce qui rend les abandons plus punitifs que les défaites normales.  La mise à l'échelle est ensuite calculée `with max_time * sqrt(max_time) / sqrt(120) * max_points_per_second`. Le maximum de points par seconde est `0.125 (1 full point every 8 seconds)`. Selon cette formule, les courses courtes importent encore moins que la simple proportionnalité, et les courses plus longues comptent davantage ;  car 2 courses de 60s sont plus aléatoires qu'une seule course de 120s.

[^6]: Il est de 1 pour les contre-la-montre et de 0,4 pour les courses avec objet, qui sont plus aléatoires. Cela peut changer.

[^7]:
    Par défaut, c'est 1. Si un joueur dépasse différents seuils de points maximum atteints ou de courses classées effectuées, le changement est plus faible.

    * 4000 points ou 50 courses donnent un facteur de 0.8

    * 5000 points ou 100 courses donnent un facteur de 0.7

    * 6000 points ou 250 courses donnent un facteur de 0.6

    * 7000 points ou 500 courses donnent un facteur de 0.5

    * 8000 points ou plus de 500 courses donnent un facteur de 0.4

    Les facteurs des deux joueurs sont multipliés les uns par les autres, stabilisant encore davantage les scores en tête du classement, tout en permettant une évolution plus dynamique pour les mauvais ou nouveaux joueurs.
