---
title: Медиахранилище
display_title: true
---
**Медиахранилище ** — это место, где хранятся все исходные файлы 3D-моделей, текстур, звука и все прочие игровые материалов, используемые в STK. Это необходимо, так как эти файлы обычно слишком велики или даже несовместимы с игрой, поэтому они сжимаются или преобразуются перед упаковкой игры.

Медиахранилище служит и другой цели: с его помощью вы можете импортировать большое разнообразие текстур и объектов в создаваемые вами треки. Поскольку Blender придирчив к структуре файлов ваших треков, при привязке текстур и библиотечных узлов из репозитория мультимедиа, мы рекомендуем поместить файл проекта Blender вашего узла kart/track/library в его собственную папку под соответствующей категорией в вашей загруженной копии хранилища мультимедиа, **как если бы это была официальная часть игры.**

Мы рекомендуем ориентироваться на версию STK для разработчиков, поэтому лучший способ загрузить репозиторий мультимедиа — это использовать клиент Subversion (SVN) (дополнительная информация на странице [Установка инструментов](Installing_Tools)).

В Unix-подобной операционной системе примером команды checkout будет:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
