---
title: Script
toc: true
---
## Introduction

Les scripts sont utilisés pour créer toutes sortes d'interactions amusantes dans le jeu. Si vous voulez que quelque chose de spécial se produise en fonction d'un événement (un kart qui heurte un autre kart, un gros bouton rouge, un gâteau explosif qui heurte une boîte en bois), le scripting est exactement ce qu'il vous faut!

Vous pouvez utiliser AngelScript pour créer des scripts dans les versions supérieures à 0.8.1. Si vous souhaitez apprendre à ajouter vos propres scripts, vous pouvez consulter la documentation AngelScript.

## API de script

L'API est disponible [ici](https://doxygen.supertuxkart.net/group__Scripting.html)

## Déclencheurs pour les scripts

### Déclencheurs d'action (Action Triggers)

Les déclencheurs d'action sont des déclencheurs ponctuels avec un rayon. Il s'agit d'une grosse bulle qui éclate lorsque vous y pénétrez, ce qui déclenche une action. Il s'agit probablement de la meilleure méthode pour déclencher des événements basés sur la localisation. Par défaut, le déclencheur est désactivé dès qu'il est activé. Ils peuvent être activés ou désactivés comme vous le souhaitez, en utilisant d'autres scripts.

Méthodes appropriées:

{%popup_code
c++
void createTrigger(const string &in, const Vec3 &in, float distance)
void setTriggerReenableTimeout(const string &in, const string &in, float reenable_time)%}

### En cas de collision

Le déclenchement basé sur les collisions consiste à fournir des interactions basées sur les collisions. Plusieurs types de rappels sont définis.

Actuellement, les différents rappels sont les suivants

{%popup_code
c++
void onKartKartCollision(int idKart1, int idKart2) //Pour les collisions entre karts%}

Pour détecter une collision entre un kart et un objet physique (track object), la propriété "on-kart-collision" doit être définie sur l'objet dans le fichier scene.xml, contenant le nom de la fonction de script à appeler.

{%popup_code
c++
// scene.xml
<object type="movable" id="TestObject" ... model="TestObject.spm" on-kart-collision="onTestObjectKartCollision"/>

// scripting.as
void onTestObjectKartCollision(int idKart, const string libraryInstance, const string obj_id)
{
    // ...
}%}

Pour détecter une collision entre un objet (powerup/weapon) et un objet physique (track object), la propriété "on-item-collision" doit être définie sur l'objet dans le fichier scene.xml, contenant le nom de la fonction de script à appeler.

{%popup_code
c++
// scene.xml
<object type="movable" id="TestObject" ... model="TestObject.spm" on-item-collision="onTestObjectItemCollision"/>

// scripting.as
void onTestObjectItemCollision(int itemType, int idKart, const string objID)
{
   if (itemType == Kart::PowerupType::BOWLING)
   {
       // ...
   }
}%}

### Au départ

Les scripts de démarrage s'exécutent une seule fois, pendant le processus de chargement de la piste. Ils sont donc idéaux pour définir les états initiaux des animations, créer de nouveaux déclencheurs d'action, etc.

{%popup_code
c++
void onStart()%}

Les objets de bibliothèque peuvent également déclarer un rappel onStart, qui doit être placé dans un espace de noms portant le même nom que l'objet de bibliothèque (il est recommandé de placer **tout** le code de l'objet de bibliothèque dans son propre espace de noms afin d'éviter les conflits).

{%popup_code
c++
namespace stklib_fitchBarrel_a
{
    void onStart(const string instID)
    {
        // ...
    }
}%}

### Sur mise à jour (actuellement désactivé dans track.cpp)

<span style="color:red">AVERTISSEMENT: Inefficace. A utiliser avec précaution.</span>

Les scripts de mise à jour continueront à être exécutés pendant toute la durée de la course et, de ce fait, entraîneront des problèmes de performance s'ils sont utilisés sans précaution. Ils sont toutefois idéaux pour tester les scripts pendant les essais. Dans la mesure du possible, ces actions scénarisées doivent être déplacées dans l'un des autres types (plus probablement le type "action-trigger driven") afin d'améliorer les performances.

{% include art_portal %}
