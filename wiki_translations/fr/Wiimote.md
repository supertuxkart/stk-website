---
title: Wiimote
display_title: true
---
SuperTuxKart est compatible avec les manettes Wii de Nintendo, également appelées Wiimotes. Une limitation actuelle est que nous n'avons pas encore de support pour les nouvelles Wiimotes avec le texte "Wii MotionPlus INSIDE". Si vous possédez l'une de ces manettes, vous ne pourrez malheureusement pas la faire fonctionner avec STK. Les manettes auxquelles a été ajouté un nunchuck MotionPlus séparé devraient fonctionner, pour autant que nous le sachions.

{%popup_info Certaines Wiimotes MotionPlus fonctionneront, mais la "RVL-CNT-01-TR" ne fonctionnera pas !  Si vous en avez une, essayez [FreePIE](https://andersmalmgren.github.io/FreePIE/) pour Windows, [wJoy](https://github.com/alxn1/wjoy) pour macOS, ou [MoltenGamepad](https://github.com/jgeumlek/MoltenGamepad) pour Linux.%}

## Linux

1.  Assurez-vous que le paquetage 'bluez' est installé et activé.
2.  Démarrez STK, allez dans les options, sélectionnez l'onglet "Commandes", sélectionnez " Ajouter un périphérique ", " Ajouter une Wiimote ".
3.  Appuyez simultanément sur les boutons 1 et 2 de votre Wiimote, puis cliquez sur OK.
4.  Attendez que la Wiimote se connecte, et cliquez sur OK si une boîte de dialogue "Found X wiimote(s)" s'affiche.
5.  Si le message "Could not detect any wiimote :/" s'affiche, cliquez sur "OK" et réessayez.

## macOS

1.  Veillez à activer le Bluetooth sur votre Mac.
2.  Démarrez STK, allez dans les options, sélectionnez l'onglet "Commandes", sélectionnez " Ajouter un périphérique ", " Ajouter une Wiimote ".
3.  Appuyez simultanément sur les boutons 1 et 2 de votre Wiimote, puis cliquez sur OK.
4.  Attendez que la Wiimote se connecte, et cliquez sur OK si une boîte de dialogue "Found X wiimote(s)" s'affiche.
5.  Si le message "Could not detect any wiimote :/" s'affiche, cliquez sur "OK" et réessayez.

## Windows

1.  Veillez à activer le Bluetooth
2.  Ouvrez le panneau de configuration.
3.  Ajouter un périphérique Bluetooth:\
    Vista\
    Allez dans "Périphériques Bluetooth" et ajoutez un périphérique Bluetooth.

    Windows 7/8/10\
    Allez dans "Afficher les périphériques et les imprimantes" dans "Matériel et son" et cliquez sur "Ajouter un périphérique".

4.  Appuyez sur 1+2 sur votre Wiimote, et attendez qu'elle soit détectée. La Wiimote peut d'abord être détectée comme un "périphérique d'entrée" générique, mais après quelques secondes, le nom du périphérique devrait changer pour devenir "Nintendo RVL-CTN-01" ou quelque chose de similaire. Assurez-vous que les LEDs de la Wiimote clignotent, si elles s'arrêtent avant d'être connectées, appuyez à nouveau sur 1+2. Vous devriez obtenir un affichage comme le suivant:

{% single_gallery /assets/wiki/Wii1.jpg %}

1.  Sélectionnez l'icône "Nintendo RVL...":

{% single_gallery /assets/wiki/Wii2.jpg %}

1.  Cliquez sur "Associer sans utiliser de code".
2.  Démarrez STK, allez dans les options, sélectionnez l'onglet "Commandes", sélectionnez " Ajouter un périphérique ", " Ajouter une Wiimote ".
3.  Appuyez simultanément sur les boutons 1 et 2 de votre Wiimote, puis cliquez sur OK.
4.  Attendez que la Wiimote se connecte, et cliquez sur OK si une boîte de dialogue "Found X wiimote(s)" s'affiche.
5.  Si le message "Could not detect any wiimote :/" s'affiche, cliquez sur "OK" et réessayez.

Notez que votre wiimote restera connectée à votre ordinateur même si vous quittez SuperTuxKart (ce qui signifie qu'elle utilisera de la batterie). La meilleure option est de la déconnecter explicitement du gestionnaire Bluetooth. Nous avons également constaté des problèmes de connexion si la wiimote est déjà répertoriée dans la liste des périphériques Bluetooth lorsque vous essayez de la connecter. Je n'ai pu la connecter à SuperTuxKart qu'après avoir supprimé la wiimote de la liste des périphériques Bluetooth (et l'avoir de nouveau découverte).
