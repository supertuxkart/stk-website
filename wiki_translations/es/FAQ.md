---
title: FAQ
---
{% start_liquid main_title %}

Preguntas generales

{% end_liquid %}

{% start_liquid qa %}

¿Qué es SuperTuxKart?

Un juego de carreras de karts en 3D de código abierto. Su objetivo es que se lo pasen bien jugadores de todos los niveles, a base de darles cajas de elementos aleatorios, nitro, derrapes, y más cosas. El realismo no es lo más importante.

STK ofrece un modo multijugador en línea, un modo multijugador local, y un modo de un solo jugador contra IAs tanto con carreras a medida como un modo historia a completar para desbloquear karts i circuitos. También contiene campeonatos, donde el objetivo es ganar el máximo número de puntos en varias carreras.

Sus 21 circuitos te llevarán por entornos variados. Desde playas de islas soleadas hasta las profundidades de una antigua mina, desde las calles de Candela City a tranquilas carreteras en medio del campo, desde una nave espacial hasta las montañas, tienes mucho para explorar y descubrir.

El juego también tiene modos de juego adicionales además de las carreras normales: contrarreloj, sigue al líder, fútbol, capturar la bandera, y dos tipos de modo batalla.

¡[Descubre más aquí](Discover)!

{% end_liquid %}

{% start_liquid qa %}

¿Quién está detrás de SuperTuxKart?

Ver la página de nuestro [equipo](Team) para más información sobre la gente que està detrás del SuperTuxKart.

{% end_liquid %}

{% start_liquid qa %}

¿Cuáles son los requisitos de hardware?

**GPU**

La GPU suele ser el factor que limita el rendimiento del STK. Las tarjetas que cumplen los requisitos mínimos tienen el soporte OpenGL para ejecutar el juego, pero necesitan una baja resolución y gráficos de baja calidad para poder jugar bien. Las tarjetas que cumplen o superan los requisitos recomendados pueden ejecutar el circuito más exigente del STK a 60FPS/1080p con el renderizador moderno y los gráficos a 4.

* **Recomendado**: NVIDIA GeForce GTX 950, AMD Radeon RX 460, o superior; Como mínimo 1 GB VRAM (memoria de vídeo).
* **Mínimo**: tarjeta NVIDIA GeForce 470 GTX, AMD Radeon de la serie 6870 HD o Intel HD Graphics 4000; Como mínimo 512 MB VRAM (memoria de vídeo).

**CPU**

El rendimiento de la CPU podría ser el factor limitante dependiendo de la tarjeta gráfica y de la configuración de los gráficos. Principalmente en el modo en línea, donde se hace un uso más intensivo. Un buen rendimiento de la CPU ayuda a garantizar una buena cantidad de fotogramas por segundo y, aún más importante, suavidad. Para el STK, el rendimiento con un solo hilo de ejecución es primordial.

* **Recomendado**: rendimiento equivalente al de un Core i5-2400 de un solo hilo o superior. Esto incluye las CPUs AMD Ryzen de escritorio, la mayoría de CPUs de Intel de escritorio desde 2012 y las CPUs móviles de gama media-alta recientes.
* **Mínimo**: Cualquier procesador AMD o Intel con doble núcleo. Los modelos muy antiguos y los componentes de móviles con poca frecuencia de reloj podrían tener dificultades, especialmente en el modo en línea.

**Otros requisitos**

* Como mínimo 1 GB de RAM libre
* Espacio en disco: 700 MB

**Opcional**

* (Si prefieres jugar con un joystick) Un joystick con un mínimo de 6 botones.

{% end_liquid %}

{% start_liquid qa %}

Mi ordenador es demasiado viejo para ejecutar el SuperTuxKart. ¿Qué debo hacer?

Puedes probar suerte y ejecutar el juego. El STK tiene un renderizador de mínimos que sólo usa OpenGL 2.1 / GLES 2 / DirectX 9 que debería funcionar en la mayoría de dispositivos, pero sin el renderizador moderno.

{% end_liquid %}

{% start_liquid qa %}

¿Cuál es la historia de SuperTuxKart?

Primero estaba el [TuxKart](http://tuxkart.sourceforge.net). Se trabajó en esto (aproximadamente) entre abril de 2000 y marzo de 2004. En junio de 2004, el projecte 'Juego del mes' del [Linux Game Tome](https://web.archive.org/web/20040915081722/http://www.happypenguin.org/) decidió mejorar el TuxKart. Esto se hizo entre junio y diciembre de 2004. (La mayoría de enlaces a las páginas del foro antiguo están rotos, archivos aquí: [[1]](https://web.archive.org/web/20041109144934/http://www.happypenguin.org/forums/viewtopic.php?t=1407) [[2]](https://web.archive.org/web/20120607000453/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=15&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[3]](https://web.archive.org/web/20120606235857/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=30&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[4]](https://web.archive.org/web/20120607000143/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=45&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[5]](https://web.archive.org/web/20120607000320/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=60&sid=e3789fa7035b89cbfc1ab2aa6366033c) [[6]](https://web.archive.org/web/20120606235853/http://www.happypenguin.org/forums/viewtopic.php?t=1407&postdays=0&postorder=asc&start=75&sid=e3789fa7035b89cbfc1ab2aa6366033c). Desgraciadamente, este proyecto terminó en un gran desacuerdo, y finalmente se decidió guardar el estado actual como "SuperTuxKart". A pesar de que se hicieron algunas mejoras gráficas, la base de código era muy inestable y prácticamente injugable. Nadie trabajó en el (Super)TuxKart durante muchos años.

En 2006, Joerg Henrichs (a.k.a. "Hiker") recogió el SuperTuxKart y arregló los errores pendientes y los problemas de rendimiento sin ninguna implicación por parte del diseñador original del juego o del proyecto 'Juego del mes'. Con la ayuda de "Coz", se hizo una primera versión del STK en septiembre de 2006.

En mayo de 2007 se publicó la versión 0.3. Añadía listas de mejores tiempos, un nuevo circuito (Isla), la bomba de relojería, soporte para MacOSX, y soporte para OpenAL.

En febrero de 2008 se publicó la versión 0.4. Esta versión usaba Bullet Physics para mejorar la gestión de las colisiones. "Auria" se unió y empezó a mejorar circuitos (Arenes movedizas, El faro).

La versión 0.5 se publicó en mayo de 2008. Incluía muchos circuitos mejorados, retos desbloqueables, el modo de juego "sigue al líder", y más traducciones (detección del idioma del SO y coincidencia con la traducción más cerana).

La versión 0.6 se publicó el 22 de enero de 2009. Tenía una jugabilidad significativamente mejorada; mejor física con la nitro y los derrapes. El sistema de sonido también se mejoró, se añadió música más interesante y también nuevos circuitos y nuevos karts. También se vio por primera vez la arena especial multijugador para batallas a 3 golpes y nuevas armas/mejoras para utilizar.

La versión 0.7 se publicó el 20 de diciembre de 2010. Contenía varias mejoras significativas, incluyendo: un nuevo motor de renderizado 3D, Irrlicht, una nueva IGU (Interfaz Gráfica de Usuario), nuevas animaciones de karts y circuitos, nuevos circuitos, karts y armas/mejoras, y soporte para atajos y caminos alternativos. Las versiones 0.7.1, 0.7.2 y 0.7.3 se publicaron al cabo de poco tiempo con más mejoras.

La versión 0.8 se publicó en diciembre de 2012, añadiendo un modo historia y nuevos retos, una IA mejorada, mejores derrapes, modo al revés, nuevos circuitos y música. Los menús también se mejoraron. A continuación vino la 0.8.1, que añadía y actualitzaba circuitos, añadía los modos de fútbol y búsqueda de huevos, y otras mejoras gráficas y de jugabilidad.

En 2015 publicamos la versión 0.9, una versión innovadora propulsada por un motor de juego totalmente nuevo lamado Antarctica, que añadía características gráficas avanzadas que habrían sido imposibles en versiones anteriores. Estas características incluían iluminación dinámica, renderizado instanciado (permitiendo un gran incremento de la vegetación), y más. A la 0.9 la siguieron tres versiones menores, que incluían características adicionales y nuevos circuitos.

En abril de 2019 publicamos la versión 1.0, por primera vez con soporte para multijugador en línea. Aparte de esta característica principal, hubo circuitos nuevos y actualizados, se añadieron los retos de SuperTux en el modo historia, muchos ajustes de equilibrio, y muchas más mejoras y correcciones.

Entonces Hiker anunció oficialmente su decisión de retirarse del proyecto después de haberlo liderado durante 13 años. También dejo su rol como colíder, pero siguió involucrado con el proyecto.

El lideraje del proyecto se transfirió a Benau, uno de los principales contribuidores de código desde 2017, y Alayan, un gran contribuidor para la 1.0. Deveee, un importante contribuidor durante muchos años que es el responsable de la versión de Android, se mantuvo en el equipo.

En enero de 2020 se publicó la versión 1.1. El juego no cambió, ya que todas las versiones 1.0 son compatibles. Los principales cambios de la versión fueron un código de red mejorado y grandes mejoras en la interfaz, especialmente en resoluciones altas, junto con otras muchas correcciones de errores y otras mejoras.

En agosto de 2020 se publicó la versión 1.2. Mejoraba el soporte para mandos vía SDL2, que permite conexiones en caliente y mapeado de mandos.

En septiembre de 2021 se ha publicado la versión más reciente, la 1.3. Contiene actualizaciones para muchos de los karts oficiales.

Para más detalles, consulta el [registro de cambios](https://github.com/supertuxkart/stk-code/blob/master/CHANGELOG.md), el [blog](https://blog.supertuxkart.net) o la lista de problemas resueltos en el GitHub del STK.

{% end_liquid %}

{% start_liquid qa %}

¿SuperTuxKart es un clon del Mario Kart?

¡No! La serie del Mario Kart es el juego de karts más conocido, pero ha habido muchos otros.

Algunas versiones antiguas del STK intentaban imitar el Mario Kart, pero ya hace mucho tiempo que no es así. A veces nos lo miramos en busca de inspiración, tal y como hacemos con otros juegos de karts, pero nada más.

No sólo hay diferencias significativas en la forma de jugar, sino que el SuperTuxKart evoluciona a su manera y no intentamos hacer que se parezca al Mario Kart.

{% end_liquid %}

{% start_liquid qa %}

¡Quiero ayudar! ¿Qué puedo hacer?

Primero, echa un vistazo a la página [Participa](Community). Debería contener toda la información que necesitas para empezar a programar, modelar, diseñar, o lo que sea que quieras hacer.

Antes de empezar,d eberías contactar con los desarrolladores y artistas actuales a través del [IRC](https://web.libera.chat/?channels=#supertuxkart), el [canal de Telegram](https://t.me/STKInternational) o el [foro](https://forum.freegamedev.net/viewforum.php?f=16), y explicarnos qué es lo que quieres conseguir. Esto incrementará mucho las posibilidades de que tu contribucinó sea aceptada.

{% end_liquid %}

{% start_liquid main_title %}

Preguntas sobre el juego

{% end_liquid %}

{% start_liquid qa %}

La IA (kart controlador por el ordenador) ha disparado hacia atrás. ¿Cómo puedo hacer eso?

La mayoría de armas (bola de bolos, pastel, desatascador) se pueden usar hacia atrás. Simplemente, dispara mientras miras hacia atrás.

{% end_liquid %}

{% start_liquid qa %}

¿La IA hace trampas?

¡No!

Los límites y los incrementos de velocidad son exactamente los mismos para todos los karts, IA o humanos. En niveles de dificultad bajos, la IA incluso puede ralentizarse a propósito. Las probabilidades de las mejoras al recoger cajas también son idénticas. Hay pequeñas diferencias en como de rápido pueden los karts virar de una dirección a otra, pero no da ninguna ventaja significativa a la IA ni está pensado para hacerlo.

La IA a veces puede tener reflejos sobrehumanos para usar las armas, pero si un humano pulsa el botón en el momento preciso puede conseguir el mismo resultado. También hay mucho margen para ser más listo que ella.

Si te cuesta derrotar a la IA, céntrate en mejorar tu conducción para estrellarte lo mínimo posible mientras vas rápido, y aprende a usar el derrape. En los niveles altos de dificultad, derrapar es esencial para derrotar a la IA.

{% end_liquid %}

{% start_liquid qa %}

¿Puedo jugar al STK por Internet?

¡Sí! Después de crear una cuenta en línea dentro del juego y conectarte con ella, selecciona el botón "En línea" del menú principal y después "Red global" para acceder a las partidas en línea a través de Internet. Puedes crear tu propio servidor para que otros puedan jugar, o unirte a servidores gestionados por la comunidad. Para una buena experiencia, una conexión estable y un ping bajo son importantes.

{% end_liquid %}

{% start_liquid qa %}

¿Por qué algunas teclas del teclado no funcionan cuando se pulsan a la vez?

Cuando juegues con un teclado, puedes experimentar problemas al pulsar múltiples teclas simultáneamente, como por ejemplo intentando usar nitro mientras aceleras o giras. En estas situaciones algunas pulsaciones de tecla puede ser que no queden registradas. Pero esto no es un error del SuperTuxKart, sino una limitación física de tu teclado. La mayoría de teclados sólo pueden manejar un cierto número de teclas pulsadas al mismo tiempo (para una información más detallada, consulta [esta página](https://www.sjbaker.org/wiki/index.php?title=Keyboards_Are_Evil)). La solución es usar un dispositivo de entrada especial para juegos (mandos o o teclados de gaming), o ajustar la configuración del teclado para encontrar teclas que tu teclado sea capaz de registrar al mismo tiempo.

{% end_liquid %}

{% start_liquid qa %}

Tengo problemas raros con mi dispositivo de entrada

Esto puede incluir el kart yendo siempre hacia la izquierda, o frenando aleatoriamente, u otras rarezas similares donde el juego parece creer que has pulsado una tecla que no has tocado. Si pasa esto, prueba de ir al menú de opciones, en la pantalla de dispositvos de entrada, y comprueba si allí tienes mandos. Intenta deshabilitar todos los dispositivos excepto el que estás utilizando. A veces se pueden recibir datos de entrada falsos de mandos u otros dispositivos parecidos que el SO ve como un mando.

{% end_liquid %}

{% start_liquid qa %}

De repente ha aparecido un gran círculo rojo en mi pantalla. ¿Qué es eso?

Si hay un pingüino en medio del círculo, alguien te ha disparado un desatascador en la cara. Puedes hacérselo a los demás disparando el desatascador hacia atrás (mírate la pregunta acerca de cómo disparar hacia atrás).

{% end_liquid %}

{% start_liquid qa %}

¿Puedo usar mi mando de la Wii con el STK?

¡Sí! Mira la página del [Wiimote](Wiimote) para más detalles.

{% end_liquid %}

{% start_liquid main_title %}

Preguntas técnicas

{% end_liquid %}

{% start_liquid qa %}

He descubierto un error, ¿cómo debería contactar con vosotros?

Primero, mira el [bug tracker del STK](https://github.com/supertuxkart/stk-code/issues) y abre una nueva incidencia si tu problema no ha sido reportado aún.

{% end_liquid %}

{% start_liquid qa %}

¿Dónde se guarda la configuración?

* En **Windows**: está en `%APPDATA%/supertuxkart/config-0.10` (puedes introducir esto en el explorador de ficherors y te llevará).
* En **Linux**: O está en `$XDG_CONFIG_HOME/supertuxkart/config-0.10` (primera opción), o en `~/.config/supertuxkart/config-0.10` (segunda opción) o en `~/.supertuxkart/config-0.10` (tercera opción).
* En **macOS**: está en `~/Library/Application Support/supertuxkart/config-0.10`. Ten en cuenta que este directorio podría estar oculto.

También puedes mirar la salida en el terminal para ver si hay una nota diciendo donde se guardan los fitchros de configuración o buscar un fichero llamado "config.xml".

{% end_liquid %}

{% start_liquid qa %}

La versión de Git no me compila. ¿Qué debo hacer?

Esto pasa a veces. Los desarrolladores deberían saberlo y debería arreglarse pronto. Si el [GitHub Actions](https://github.com/supertuxkart/stk-code/actions) dice que la versión actual compila, pero a ti no te funciona, entonces probablemente haya algo mal en tu entorno de compilación. (Comprueba si tienes todas las dependencias, vuelve a ejecutar el CMake...)

{% end_liquid %}

{% start_liquid qa %}

¿Cómo desbloqueo todos los circuitos?

La idea es jugar al modo historia y superar todos los retos.

Pero si lo que quieres es desbloquearlo todo sin jugar al modo historia, también puedes hacer trampas editando un fichero de configuración. Abre la carpeta mencionada en la pregunta "Dónde se guarda la configuración". Desde allí, abre la carpeta "config-0.10", después abre el fitchero "players.xml". Sustituye todas las ocurrencias de "none" con "hard" (o "easy" o "medium", indicando el nivell más alto en el cual has superado un reto).

{% end_liquid %}
