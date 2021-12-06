---
title: Scripting
toc: true
---
## Introduction

Scripting is used to provide all kinds of fun in-game interactions. If there's anything special you want to happen based on some event (Kart smashing into another kart, driving over a big red button, hitting a wooden box with an explosive cake), then scripting is just the thing for you!

You can use AngelScript for scripting in version higher than 0.8.1. If you want to learn how to add your own scripts, you should refer the AngelScript documentation.

## Scripting API

The API can be found at <https://doxygen.supertuxkart.net/group__Scripting.html>

## Triggers for scripts

### Action Triggers

Action Triggers are point based triggers with a radius. Think of it as a big bubble that pops when you enter it, triggering some action. This is probably the best method of triggering location-based events. By default the trigger is disabled right after it is activated. They can be activated or deactivated as you wish, using other scripts.

Relevant Methods:

{%popup_code
c++
void createTrigger(const string &in, const Vec3 &in, float distance)
void setTriggerReenableTimeout(const string &in, const string &in, float reenable_time)%}

### On Collision

Collision-based triggering revolves around providing collision based interactions. Several different types of callbacks are defined.

At present the different callbacks are

{%popup_code
c++
void onKartKartCollision(int idKart1, int idKart2) //for collisions between karts%}

To detect collision between a kart and a physical object (track object), the "on-kart-collision" property should be defined on the object in the scene.xml file, containing the name of the scripting function to call

{%popup_code
c++
// scene.xml
<object type="movable" id="TestObject" ... model="TestObject.spm" on-kart-collision="onTestObjectKartCollision"/>

// scripting.as
void onTestObjectKartCollision(int idKart, const string libraryInstance, const string obj_id)
{
    // ...
}%}

To detect collision between an item (a powerup/weapon) and a physical object (track object), the "on-item-collision" property should be defined on the object in the scene.xml file, containing the name of the scripting function to call

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

### On Start

Start-up scripts will run exactly once, during the track loading process. As such, they are ideal for setting the initial states of any animations, creating new action triggers, etc.

{%popup_code
c++
void onStart()%}

Library objects can also declare an onStart callback, it should be placed in a namespace that has the same name as the library object (it is recommended to put **all** library object code in its own namespace to avoid conflicts

{%popup_code
c++
namespace stklib_fitchBarrel_a
{
    void onStart(const string instID)
    {
        // ...
    }
}%}

### On Update (currently disabled in track.cpp)

<span style="color:red">WARNING: Inefficient. Use sparingly.</span>

Update scripts will keep running throughout the race and as such, will cause performance issues if used carelessly. They are ideal, however, for testing out scripts during testing. Whenever possible, these scripted actions should be moved into one of the other types (most probably the action-trigger driven type) so as to improve performance.

{% include art_portal %}
