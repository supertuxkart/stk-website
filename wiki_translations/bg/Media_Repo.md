---
title: Хранилище за медийни файлове
display_title: true
---
**Хранилището за медийни файлове** е мястото, където се съхраняват всички оригинални файлове на 3-измерните модели, текстурите, звуците и всички други материали, които се ползват в СТК. Това е необходимо, тъй като тези файлове обикновено са твърде големи или дори несъвместими с играта – затова те се смаляват или преобразуват, преди да влязат във версията на играта, която бива издадена.

Хранилището за медийни файлове има още едно предимство: когато го ползвате, можете да внесете огромно количество текстури и обекти в пистите, които правите. Blender изисква да се ползва определена структура на файловете на пистите, когато те се свързват с текстури и други ресурси от хранилището за медийни файлове. Затова препоръчваме да поставяте проектния си файл на Blender за количка, писта и т.н. в отделна папка под правилната категория в сваленото копие на хранилището за медийни файлове, **все едно е официална част от играта**.

Препоръчваме при разработката си да ползвате работната версия на СТК, така че най-добрият начин да свалите хранилището за медийни файлове, е чрез ползването на клиент за Subversion (SVN). Повече информация може да намерите в страницата за [инсталиране на инструментите](Installing_Tools).

Ако използвате операционна система наподобяваща Unix, командата за сваляне може да изглежда горе-долу така:

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}
