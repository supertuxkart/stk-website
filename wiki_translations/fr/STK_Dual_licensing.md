---
title: STK Double licence
display_title: true
---
**Le projet vise à accorder à STK une double licence GPL et MPL**

Voici un peu d'histoire:

En 2017, nous avons obtenu le greenlit de STK sur Steam, mais comme vous le savez tous, STK n'est toujours pas disponible sur Steam. La raison n'est pas seulement le problème que nous avons besoin d'une société à responsabilité limitée, mais aussi des problèmes liés à la licence actuelle de STK: nous ne pouvons pas légalement lier le framework steam avec STK, et sans cela STK sur Steam manquerait de beaucoup de fonctionnalités cool qui rendent Steam si pratique pour les utilisateurs - par exemple la connexion avec le compte steam pour jouer à STK en ligne, les réalisations steam, ....

Un autre exemple de problèmes liés à la licence est que nous avons intégré les fonctions de cryptographie utilisées dans les jeux en ligne en nous basant d'abord sur OpenSSL, mais nous nous sommes ensuite rendu compte qu'il y avait un conflit entre la licence OpenSSL et la licence GPL. Pour contourner le problème, nous avons utilisé Nettle, qui double la taille du code de STK et entraîne des frais de maintenance supplémentaires.

Il y a quelques mois, nous avons commencé à développer une version iOS de STK et une fois de plus, nous ne pouvons pas mettre une application STK dans l'Apple Store. De plus, le projet Minetest a décidé de réécrire son moteur et aimerait utiliser une partie de notre code, ce qui nous permettrait d'économiser beaucoup d'efforts (comme vous avez pu le voir dans le mail précédent), mais là encore il n'est pas possible de mettre nos sources à disposition de ce projet car la licence Minetest (LGPL2) n'est pas compatible avec la GPL3 qu'utilise STK.

Voici quelques informations sur la licence MPLv2:

La MPLv2 présente certaines similitudes avec la GPLv2 en ce qui concerne le copyleft, cette licence exige que tous les logiciels qui l'utilisent divulguent les changements (le cas échéant) lors de la création du binaire basé sur cette licence, mais n'exige pas que le produit final ait la même licence, ce qui est le cas de la GPLv3. (Voir ci-dessous un exemple d'utilisation avec SDL2)

Cela permettra de s'assurer que tout travail effectué par quiconque sera toujours répercuté sur la communauté, et sera utile à tout autre projet qui voudra l'utiliser. Et en raison de la double licence, le code restera toujours disponible sous GPLv3. Ce mélange de licences nous permettra de publier STK en tant qu'application iOS, de fournir notre code à Minetest, et nous continuerons à publier le futur code sous GPLv3 également.

Après que la double licence ait résolu les problèmes ci-dessus, cela conduirait également à un avenir plus brillant pour STK: comme vous devriez le remarquer dans notre blog, nous avons porté STK pour utiliser SDL2 pour la gestion des entrées et la création de fenêtres, SDL2 lui-même a un port console qui existe déjà, ce qui permettrait des versions console de STK beaucoup plus facilement (pour mémoire, STK sur console n'est pas possible pour le moment, en raison d'un accord de non-divulgation qui est en contradiction avec la GPL3).

Vous pouvez jeter un coup d'oeil à notre dernier portage Haiku: il ne nécessite que quelques lignes de définition pour la bibliothèque requise par STK, le code stk de base n'a pas besoin d'être adapté à Haiku (et éventuellement à n'importe quelle plateforme), car SDL2 s'en chargera et SDL2 n'utilise pas de licence restrictive, ce qui rend le portage sur console possible.

Nous prévoyons également de porter STK pour utiliser le rendu Vulkan, et si STK utilisait une licence plus permissive, cela permettrait à la communauté de réutiliser le code plus facilement. STK restera free-to-play et open source comme toujours.

Référence Minetest: <https://github.com/supertuxkart/stk-code/issues/2381#issuecomment-158745140>

Voici la liste des contributeurs à qui nous aimerions demander l'accord pour une double licence du code STK en MPLv2 ou version ultérieure : (Mise à jour le 28 août pour ne garder que les personnes restantes qui doivent être contactées)


Arthur-D

Bart Cools

Csaba Molnar

Daniel Ölschlegel

Dimitrije Jankov

Dk

Ethan Uzarowski

Igor Gnatenko

KristofDM

KroArtem

LeMagnesium

Liam Middlebrook

Mathieu Laprise

Max Teufel

MiroslavR

Nathan Osman

Rakesh Ranjan Nayak

River Marks

Ryan

Thomas Glamsch

Timothy Hamlett

Tobias Markus

Torbjörn Söderstedt

Unitraxx

Urtzi Odriozola

Vincent Lejeune

abhishek1995

amtkhdkr

cosmin.crecana

davemk

fHachenberg

hasufell

mbjornstk

quizywiz

rogue-spectre

sudip1401

thelittlegumnut

yasin-ghannam

Si vous pensez que vous devez être contacté, veuillez nous contacter à supertuxkart.official sur gmail.com
