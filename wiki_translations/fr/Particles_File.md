---
title: Particles File
display_title: true
---
You can add particle emitters anywhere in a track. Simply add an empty, give it the type **Particle emitter**, and in the **particle kind** property enter the name of the file describing the particles you wish to use.

For a list of currently available particle files, check the **data/gfx** folder. You should be able to create new particle types by duplicating an existing one and tweaking its properties.

## Point emitters

Point emitters may be created like this:

{%popup_code
xml
<?xml version="1.0"?>
<particles emitter="point">

    <spreading angle="24" />

    <velocity  x="0.000"
               y="0.005"
               z="0.000" />

    <material  file="particle_sand.png" />

    <rate      min="30"
               max="50"
               decay_rate="10" />

    <lifetime  min="300"
               max="500" />

    <size      min="0.6"
               max="0.8" />

    <color     min="255 255 255"
               max="255 255 255" />

    <fadeout   time="300" />

    <gravity   strength="-0.01"
               only-force-time="500" />

</particles>%}

**velocity** indicates in which direction the particles move, and at which speed

**spreading angle** indicates by how much particles may randomly deviate from their base direction as defined by their velocity

**material** contains the name of the file to use for the particles and other settings.

**rate** indicates the amount of particles that are to be emitted per second (the precise rate will randomly vary)

* **decay_rate**=*value* (optional) if set and greater than 0, will make the emission rate diminish by *value* particles per second until emission stops. Useful for bursts like explosions.

**lifetime** indicates how long a particle lives before disappearing, here too a value will be picked randomly between min and max

**size** indicates the size of each particle, here too a value will be picked randomly between min and max

To create a particle that grows over time, add "increaste-factor" properties like this :

`<size min="0.65" max="0.95" x-increase-factor="0.6" y-increase-factor="0.6" />`

**color** indicates the color applied to particles (255,255,255 is white and means no coloring is done), here too a value will be picked randomly between min and max

**fadeout time** is an optional effect that will make particles fade away gracefully at the end of their file, instead of just disappearing. The given time is the number of milliseconds before the end of a particle's life where the fadeout should occur

**gravity** is an optional effect that will make particles deviate from their initial velocity towards the ground; *only-force-time* indicates how long it takes for gravity to "take over" the original velocity

## Box Emitters

All parameters are similar, except the opening tag is

`<particles emitter="box" box_x="12.0" box_y="0.5" box_z="12.0">`

where box_x, box_y and box_z indicate the size of the emitter box

## Sphere Emitters

All parameters are similar, except the opening tag is

`<particles emitter="sphere" radius="0.3">`
