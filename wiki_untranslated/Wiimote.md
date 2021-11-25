---
title: Wiimote
display_title: true
---
SuperTuxKart has support for Nintendo Wii controllers, also called Wiimotes. One current limitation is that we do not yet have support for newer Wiimotes with the text "Wii MotionPlus INSIDE" on them. If you have one of those controllers, you will unfortunately not get it to work with STK. Controllers with a separate MotionPlus nunchuck added should work as far as we are aware.

{%popup_info Some MotionPlus Wiimotes will work, but the "RVL-CNT-01-TR" won't work!  If you have one of these, try [FreePIE](https://andersmalmgren.github.io/FreePIE/) for Windows, [wJoy](https://github.com/alxn1/wjoy) for macOS, or [MoltenGamepad](https://github.com/jgeumlek/MoltenGamepad) for Linux.%}

## Linux

1.  Be sure that package 'bluez' is installed and enabled.
2.  Start STK, go to options, select the "Controls" tab, select "Add a device", "Add Wiimote".
3.  Press 1 and 2 buttons on your Wiimote at the same time, and click OK.
4.  Wait for the Wiimote to connect, and click OK if there is a dialog "Found X wiimote(s)".
5.  If it says "Could not detect any wiimote :/" click "OK" and try again.

## macOS

1.  Be sure to enable Bluetooth on your Mac.
2.  Start STK, go to options, select the "Controls" tab, select "Add a device", "Add Wiimote".
3.  Press 1 and 2 buttons on your Wiimote at the same time, and click OK.
4.  Wait for the Wiimote to connect, and click OK if there is a dialog "Found X wiimote(s)".
5.  If it says "Could not detect any wiimote :/" click "OK" and try again.

## Windows

1.  Be sure to enable Bluetooth
2.  Open up the Control panel.
3.  Add a Bluetooth device:\
    Vista\
    Go to "Bluetooth Devices" and add a Bluetooth device

    Windows 7\
    Go to "View devices and printers" in "Hardware & Sound" and click on "Add a device".

4.  Pesss 1+2 on your wiimote, and wait for it to be detected. The Wiimote might first be detected as a generic 'input device', but after a few seconds the device name should change to be "Nintendo RVL-CTN-01" or somthing similar. Make sure the wiimote LEDs are blinking, if they stop before they were connected, press 1+2 again. You should end up with a display like the following:

{% single_gallery /assets/wiki/Wii1.jpg %}

1.  Select the "Nintendo RVL..." icon:

{% single_gallery /assets/wiki/Wii2.jpg %}

1.  Click on "Pair without using a code".
2.  Start STK, go to options, select the "Controls" tab, select "Add a device", "Add Wiimote".
3.  Press 1 and 2 buttons on your Wiimote at the same time, and click OK.
4.  Wait for the Wiimote to connect, and click OK if there is a dialog "Found X wiimote(s)".
5.  If it says "Could not detect any wiimote :/" click "OK" and try again.

Note that your wiimote will stay connected to your computer even if you exit SuperTuxKart (which means it will be using battery). The best option is to explicitly disconnect it from the Bluetooth manager. We also have seen connection problems if the wiimote is already listed in the Bluetooth device list when you try to connect it. I could only connect it to SuperTuxKart after I removed the wiimote from the list of Bluetooth devices (and let it be discovered again).
