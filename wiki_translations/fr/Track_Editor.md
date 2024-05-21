---
title: Track Editor
toc: true
---
## Installation
------------------------------------------------------------------------

Visit [here](https://github.com/supertuxkart/stk-editor).

## Making a track
------------------------------------------------------------------------

### ***Basics***

You can find a quick tutorial [here](Track_Editor_Tutorial).

#### New Track

Clicking on the "New" icon on the toolbar displays the new track dialog window. Before creating the track, there are a few things to setup:

* Track name: the name, which is displayed in SuperTuxKart. It can contain special characters
* Designer: your name. It can also contain special characters.
* File name: the name of the track's directory. It should be a valid directory name (it doesn't have to exist however), and it can't contain non-ascii characters.
* Size: size of the map. Be careful: you won't be able to change it later.
* Gravity Roads: if you check this checkbox, road meshes you create with the editor's built in road creator will have their own gravity.

***Hotkey:*** ctrl + n

#### Open Track

Tracks are saved into the `editor/maps` directory. Use the open file dialog window to select the desired map.\
***Hotkey:*** ctrl + o

#### Save

The editor doesn't save automatically, so please save often – the electricity can go away anytime : (. (Even if you have a cool Uninterruptible Power Supply, saving frequently may prevent your bitterness after a crash.) Be careful with track names too: saving a new track with an already existing name will overwrite the old one.\
***Hotkey:*** ctrl + s

#### Export

Before you can try your track, you have to build it. Click in the export button to do so: if everything goes well, you have a comforting message.

#### Try

Clicking on the try icon will let you run the game with the opened track. If you want to check the newest modifications, always export your track before clicking on this icon.

### ***Cameras***

The editor has two cameras. You can switch between them by using the "Toggle camera mode" icon, or with the hotkey ‘c'.

#### Default camera

It is an orthographic camera, used for editing the track. It has a blender-like control mechanism: scroll with the mouse wheel to zoom, press and hold middle mouse button (mouse wheel) down and move the mouse in order to rotate, do the same when ‘shift' is pressed to move. To do the second, you can also use the ‘w','a','s','d' keys.\
***Hotkeys:***\
Numpad 1 – go back to starting position and rotation\
Numpad 2 – view from back\
Numpad 8 – view from front\
Numpad 4 – view from left\
Numpad 6 – view from right

#### Maya camera

The other one is a perspective camera, which can give you a better view of how the track actually looks like. It's one of the default cameras from Irrlicht with a maya like control system: use left mouse button to rotate, right mouse button to move, and middle mouse button to zoom.

### ***Terrain***

The editor has a few tools to manipulate the terrain: it is possible to create the topography, and to draw four different textures to the surface. You can set up the radius, the intensity and the border type for the tools. The terrain can contain only four different textures, so changing one of them replaces it in the track too.

#### Change height

Click on the spade icon to select the height modifier tool. Holding down left mouse button increases, right mouse button decreases the surface in the selected area. You can also setup a minimum or maximum height, using the checkboxes and textboxes near the spade icon.

#### Soft brush

Use this tool to mix different textures. Holding down left mouse button adds, right mouse button subtracts the selected texture from the affected area.

#### Hard brush

Use this tool to replace the texture with the selected one using left mouse button, or to erase it entirely using right mouse button. The fourth texture is the default "background" image, hence it can't be removed, only replaced with the other three.

#### The Brightness tool

The Brightness tool is a little weird. It isn't affected with the selected texture. If you want to have a darker mixture of two textures, this will help: draw both with the soft brush first, then use this with left mouse button to make them darker. Right mouse button slowly replaces the presence of the first three texture, increasing the visibility of the background one.

### ***Sky***

The sky is just a huge box. You can manipulate it by changing the images of the different sides. Click on the sky images on the terrain panel to open the texture selector window, and select the desired one. After changing an image or two, switch to maya camera in order to see the results.

### ***Objects***

After selecting an object from the environment panel, you can place it on the terrain using left mouse button. If you are done with placing objects, you can use right mouse button to leave the placing state.
Left mouse button selects stuff. Right mouse button executes the active operation on selected objects: it is move by default. Pressing down right mouse button and moving the mouse will start the modification. Press right mouse button again to cancel, or left mouse button to accept the change. You can switch to scale and rotation with the toolbar icons, or with the hotkeys. There are two kinds of rotation, using the same hotkey again swaps between them.\
***Hotkeys:***\
shift + a: select\
shift + r: rotation\
shift + s: scale\
shift + g: move\
Delete: remove selected objects

***Road meshes***

There is a spline based tool for road geometry creation.

Use the textbox to give a name to the road, then the combo box to choose the spline type. Click on the create road button, then you can define the road by placing control points (left click on the terrain). Use right click or the "Finish Point Placing" icon to finish the process. You can modify, add, or remove points later. There are two splines at the moment: the Bezier is an approximation, the TCR is an interpolation. The second means that the road will cross the points exactly – it makes editing easier, but the result can be uglier.

Use the scrollbars to change the width, the detail or the texture resolution of the road. Click on the texture button to select a texture.

The control points are visualized as three spheres in the viewport: the huge red represents the position of the point, moving the blue will modify the width of the road around the point, the green is there to define the normal. The blue and the green are always positioned relative to the red, so moving the red will move them too.

There is a button to switch to road cross section mode, where you can modify the road's shape. The formation you create here will be used in every point of the spline to generate the road. Grid and symmetry modes are there to help your work, you can modify them with the buttons. You can also change the amount of points the road's cross section is consisted, but it sets the default rectangle again.

### ***DriveLine***

Driveline is there to guide the AI, and also contains some information about the track. You can activate it with the "Select DriveLine" button in the toolbar, or with selecting "DriveLine" from the road panel's combo box. It should be placed carefully, closed enough to the terrain, but still outside.
Inserting control points works like road meshes, but the driveline consists of quads, so no cross section editing, no textures. The track's start line will be near the first point, and the direction is the same as you place the points. Select a road and click on the "attach road to driveline" button to extend the driveline with the road.

### ***CheckLine***

Place checklines to prevent players from cheating. One should be enough, as far from the starting line as possible. If you want to have more, you should place them in the order the player should cross them. You define a checkline with placing two spheres, you can select and move them later. Position it carefully, make sure players will really cross it, otherwise their lap won't be valid : (

### ***Items***

Banana, gift, small nitro, big nitro – they work exactly like objects, but they have their own panel.

## Custom objects
------------------------------------------------------------------------

### ***Own textures***

In order to use your own textures, all you have to do is to copy them into the `stk-assets/textures` directory before running the editor. However if you want to publish your track, you should copy your own textures to the track's directory, otherwise others won't see your images.

### ***Own objects***

Do you have an own model, ready to load into the editor? Cool, we are prepared! You have to do three thing:
* Place the model into the `editor/obj` directory.
* Place a preview image into the `editor/img` directory
    * this helps you find your model in the editor's environment panel.
* create an xml in the `editor/xml` directory – it should be just a text file saved as something.xml.

Here is a template:

{%popup_code
xml
<?xml version="1.0"?>
<object name="horse" category="animal">
      <img path="horse.png">
      <model path="horse.b3d">
      <tag name="mount">
      <tag name="farm">
</object>%}

In the editor, you can filter models via selecting a category with a combo box, and search models by name and tags.
