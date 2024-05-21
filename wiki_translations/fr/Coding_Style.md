---
title: Style de codage
toc: true
---
C'est notre style de codage préféré. Il a été inspiré par [Le style de codage de Google](https://google.github.io/styleguide/cppguide.html), mais cet ensemble n'en est qu'un petit sous-ensemble. Actuellement, toutes nos sources ne suivent pas ce style, et nous acceptons tout correctif pour améliorer cela.

La plupart des sources suivent ce style de codage, et le reste est remanié au fur et à mesure que nous poursuivons le développement.

## Noms des fichiers et répertoires
* Tous les fichiers d'inclusion doivent se terminer par .hpp, toutes les sources sont .cpp (cela permet aux commandes shell de spécifier facilement toutes les sources : *.?pp).
* Tous les noms de fichiers sont en minuscules, avec _ comme séparateur de mots, exemple: `grand_prix_ending.hpp` (alors que les classes à l'intérieur des fichiers utiliseront Camel Case, exemple: `GrandPrixEnding`).
* Les fichiers doivent être regroupés dans des sous-répertoires appropriés. Évitez d'avoir plus d'un niveau de sous-répertoires.
* Les noms de fichiers doivent représenter le nom des classes qu'ils contiennent, exemple: `grand_prix_ending.hpp` contient la classe `GrandPrixEnding` (voir [Codage](#coding) ci-dessous). Il ne faut pas déclarer plus d'une classe dans un même fichier.

## Inclure les fichiers
* Dans le fichier XX.cpp, incluez d'abord le fichier XX.hpp correspondant s'il est disponible (cela garantit que l'en-tête n'a pas de dépendances cachées). Incluez ensuite:
    * Fichiers d'en-tête STK.
    * Bibliothèques incluses avec le code source STK (bullet, enet, irrlicht),
    * Bibliothèques externes utilisées par STK (OpenAL, …),
    * Fichiers système et STL,
    * Trier les fichiers d'en-tête par ordre alphabétique dans chaque section - exemple: pour les sources de STK: d'abord les fichiers dans src, puis les fichiers des différents sous-répertoires. Cela permet de repérer beaucoup plus facilement si un fichier est inclus plusieurs fois.
* Utilisez une protection d'en-tête `#ifdef` sous la forme suivante pour se protéger contre les inclusions multiples: `HEADER_FILE_NAME_HPP`. C'est à dire `HEADER_` suivi du nom du fichier en majuscules, avec "." remplacé par "_".
* Même si vous incluez un fichier .hpp qui se trouve dans le même sous-répertoire (disons `font/font_manager.hpp` dans `font/font_with_face.cpp`), utilisez le chemin incluant le sous-répertoire, c'est-à-dire:
{%popup_code
c++
#include "font/font_manager.hpp"%}
et non
{%popup_code
c++
#include "font_manager.hpp"%}
Cela facilite le déplacement de fichiers vers différents répertoires.
* Si possible, utilisez une simple déclaration de `class XYZ` au lieu d'inclure le fichier d'en-tête. Cela réduira le nombre de recompilations nécessaires lors de la modification des fichiers (Voir [ici](https://google.github.io/styleguide/cppguide.html#Forward_Declarations) pour plus de détails). Même si cela signifie que les petites fonctions qui pourraient être intégrées sont déplacées du fichier d'en-tête au fichier cpp (à moins qu'il ne s'agisse d'une fonction critique).

## Mise en page(Layout)
* 4 espaces pour l'indentation
* **pas de tabulation**
    * L'utilisation de tabulations signifie que les fichiers peuvent être affichés différemment d'un éditeur à l'autre, ou lorsqu'ils sont visualisés dans un terminal. Tous les éditeurs ont la possibilité d'utiliser des espaces à la place des tabulations.
    * Vous pouvez utiliser `tools/whitespaces.py` pour vous en débarrasser. (Ils seront remplacés par 4 espaces)
* L'accolade ouvrante et l'accolade fermante doivent toutes deux se trouver sur une ligne distincte. Cela signifie que:
{%popup_code
c++
int main()
{
    return 0;
}%}

Les exceptions à cette règle sont les fonctions sur une seule ligne dans les fichiers d'en-tête:
{%popup_code
c++
float getValue() const { return m_my_value; }%}

* Dans les fichiers d'en-tête, essayez d'aligner les déclarations et les définitions en colonnes (par exemple, première colonne: type, deuxième colonne: nom de la fonction). Ce n'est pas toujours possible, mais un fichier d'en-tête plus structuré est plus facile à lire et à comprendre). Exemple:
{%popup_code
c++
    NetworkMode  getMode() const                   { return m_mode;            }
    void         becomeServer();
    void         becomeClient();
    void         setState(NetworkState s)          { m_state = s;              }
    NetworkState getState() const                  { return m_state;           }
    int          getMyHostId() const               { return m_host_id;         }
    void         setHostId(int host_id)            { m_host_id = host_id;      }
    unsigned int getNumClients() const             { return m_num_clients;     }
    const std::string& getClientName(int i) const  { return m_client_names[i]; }
    bool         initialiseConnections();
    void         update(float dt);
%}
* Commencez par les déclarations privées, puis les déclarations publiques (cela peut être un peu inhabituel: l'idée est que la sortie doxygen est triée avec les déclarations publiques en premier, ce qui est ce que les gens qui étudient le code devraient regarder. Si vous regardez les sources, vous êtes plus probablement intéressé par l'implémentation, donc l'avoir en premier permet d'économiser du temps de défilement).
* Essayez de ne pas utiliser plus de 80 caractères par ligne (limite souple).
* Avoir une ligne `// ------------------------` (jusqu'à la 80ème colonne) séparant chaque définition de fonction (voir [Doxygen](#doxygen) pour un exemple)
* Si le } de fermeture se trouve à plus de quelques lignes du { d'ouverture, ou s'il y a plusieurs accolades entre les deux, ajoutez un commentaire indiquant ce que ce } ferme. Il peut s'agir d'un commentaire informel ou simplement de la déclaration d'ouverture correspondante. Par exemple:
{%popup_code
c++
}   // for i in all karts%}
ou
{%popup_code
c++
}   // for(int i = 0; i < m_num_karts; i++)%}
* Il faut éviter d'avoir plus d'une classe dans un fichier. Si vous ne pouvez pas l'éviter, séparez-les par `// ============` (jusqu'à la 80ème colonne)
* Dans le cas d'une instruction `else if()`, le `else` et le `if` se trouvent sur la même ligne.

## Doxygen
Utiliser les commentaires Doxygen. Les commentaires relatifs aux variables doivent être placés juste avant leur déclaration, et les fonctions doivent être documentées à l'endroit où elles sont implémentées, et non à l'endroit où elles sont définies. Par exemple, ne documentez pas les fonctions dans le fichier d'en-tête si elles sont implémentées dans le fichier cpp correspondant. La raison en est que, de cette façon, la documentation est à l'écran lorsque vous déboguez. Si vous voulez étudier l'interface d'une classe, il vous suffit de regarder la documentation doxygen, et toutes les informations sont sur un seul écran. Mais si vous déboguez et que vous voulez savoir ce que fait une fonction, il est ennuyeux de devoir consulter le fichier d'en-tête. Il est également plus facile de synchroniser les détails de l'implémentation et les commentaires.

Le format suivant doit être utilisé (Doxyfile est configuré pour utiliser la première phrase comme brève description).
{%popup_code
c++
/** This function is called when the AI is trying to hit an item that is
  *  pre-selected to be collected. The AI only evaluates if it's still
  *  feasible/useful to try to collect this item, or abandon it (and then
  *  look for a new item). At item is unselected if the kart has passed it
  *  (so collecting it would require the kart to reverse).
  *  \pre m_item_to_collect is defined
  *  \param kart_aim_angle The angle towards the current aim_point.
  *  \param aim_point The current aim_point.
  *  \param last_node
  *  \return True if th AI should still aim for the pre-selected item.
  */
 bool SkiddingAI::handleSelectedItem(float kart_aim_angle, Vec3 *aim_point)
 {
 }   // handleSelectedItem
%}

Chaque fonction doit avoir une documentation doxygen correspondante, expliquant brièvement ce que fait la fonction, ses paramètres et les exceptions qu'elle peut soulever. Les fonctions vraiment simples (par exemple les setters et getters), qui ne soulèvent pas d'exception ou n'ont pas de conditions préalables, peuvent ne pas nécessiter de documentation, ce qui est laissé à l'appréciation de l'évaluateur.

## Codage
* Utilisez `const` au lieu de `#define` si possible.
* Les références ne doivent être utilisées que comme `const`: `const Kart& k` . Si un objet est modifié, transmettez-le sous forme de pointeur. Cela rend plus évident les valeurs modifiées.
* Si possible, tous les paramètres des fonctions doivent être `const` corrects(c'est à dire s'il n'est pas modifié, il doit être déclaré `const`).
* Essayez de trier les paramètres en commençant par les paramètres d'entrée, puis les paramètres de sortie.
* Les valeurs des constantes au moment de la compilation doivent être en majuscules, exemple: `const float PI = 3.1415f`.
* Les variables membres commencent par m_ , exemple: `m_kart`.
* Les noms de variables sont en minuscules et séparés par _. Exemple: `sun_position` (variable membre: `m_kart_pointer`).
* Les noms de fonctions doivent être mis en capitales, à l'exception du premier mot. Exemple : `getWidth()`.
* Evitez d'utiliser `std::tuple` et `std::pair`, utilisez plutôt une classe ou une structure simple afin que toutes les variables soient correctement nommées (au lieu de `std::get<2>()`).
* Les noms des types (y compris les classes/struct/enum) ont tous en capitales. Exemple: `KartControl`.
* Les enums doivent être en majuscules, et contenir un préfixe pour rendre évidente la provenance de l'enum. Exemple: `ATTACH_BOMB`, `ATTACH_ANVIL`, ...
* Utilisez `true`/`false` au lieu de `TRUE`/`FALSE`. Dans [ce courrier](http://lists.kde.org/?l=kde-devel&m=111737503228222&w=2), il est écrit que les booléens en majuscules ne sont utilisés que pour les anciens compilateurs, nous devrions donc essayer d'éviter cette incohérence.
* Utilisez `std::string` au lieu de `char*`. Si vous avez besoin d'une chaîne de style C, utilisez la fonction `std::string.c_str()`. Cependant, il y a des cas où cela ne peut pas être évité (comme lorsque vous utilisez des chaînes avec gettext).
* Utilisez `std::min()`/`std::max()` au lieu de `#define` (Windows a besoin que `NOMINMAX` soit défini avant d'inclure `windows.h`).
* Éviter d'utiliser `friend` pour les classes
* Utiliser les opérateurs postfixes comme `i++`, et non `++i` (sauf s'il y a une différence, par exemple si i doit être une classe, et non un simple type). Il a été vérifié qu'il n'y a pas de différence dans le code créé, et nous, les développeurs, préférons le postfixe, et avoir un code cohérent.

## Portabilité
Voici quelques conseils pour assurer la portabilité de SuperTuxKart. Veuillez tenir compte de ces éléments lorsque vous ajoutez un nouveau code source ou lorsque vous nettoyez un code source existant. L'objectif est de compiler STK sur le plus grand nombre de plates-formes possible, et de supprimer tous les avertissements que nous pouvons.

* Même si `<algorithm>` est implicitement inclus dans `std::string` sous linux, ce n'est pas le cas sur toutes les plateformes (et pourrait potentiellement changer à tout moment sous linux également). Assurez-vous donc d'inclure `<algorithm>` lorsque vous utilisez des algorithmes de la STL, par exemple find, etc.
* Sur Windows et Macs au moins, les textures sont perdues lors du passage du mode plein écran au mode fenêtre. Si des textures sont utilisées, assurez-vous qu'elles sont supprimées et rechargées lors de la commutation, voir `sdldrv::drv_toggleFullscreen` pour cela.
* Windows affiche un avertissement chaque fois qu'une valeur en double précision est spécifiée alors qu'une valeur flottante normale est attendue. Pour éviter ces avertissements, vous devez donc toujours indiquer que les constantes flottantes sont en simple précision, par exemple en utilisant **1.0f** au lieu de **1.0**.
* Pour lier un fichier, assurez-vous qu'il n'y a pas d'espace entre les arguments et le nom du fichier, par exemple, `-Lbullet/Demos/OpenGL` et non pas `-L bullet/Demos/OpenGL`, car cela pose des problèmes sur Macs.
* Certains compilateurs (par exemple, VC6) ne prennent pas en charge l'initialisation des variables membres statiques dans la déclaration de la classe; il faut donc écrire l'initialisation dans le fichier d'implémentation (le fichier .cpp).
* Sous Windows, un avertissement est affiché si vous convertissez un int en un type de variable OpenGL implicitement `( GLint a = b ; )`, donc veuillez le faire explicitement `( GLint a = (GLint) b ; )`.

## Journalisation(Logging)
Nous disposons d'une classe distincte pour enregistrer les messages destinés à l'utilisateur. Cette classe doit être utilisée pour tout message imprimé sur le terminal (ou redirigé vers un fichier afin que les utilisateurs puissent nous fournir ces données). Les commandes printf/cout/cerr normales sont encore utilisées dans de nombreux fichiers, mais elles sont dépréciées. Les différents niveaux doivent être utilisés comme suit:
* fatal: Tout ce qui provoque l'abandon de STK.
* error: Toute erreur qui permet à STK de continuer à fonctionner normalement, mais qui peut avoir un impact visuel (ou autre). Les textures manquantes en sont un exemple.
* warn: Tout avertissement détecté, qui ne devrait pas causer de différence dans STK qui soit importante pour un joueur. Par exemple, si l'emplacement de la fenêtre ne peut pas être lu: il n'est pas très important que la fenêtre soit affichée à un autre endroit.
* info: Toute information utile qu'un joueur devrait toujours avoir en cas de problème. Par exemple, les chemins d'accès à différents répertoires.
* debug: La sortie de débogage, qui ne sera vue que par les développeurs. La plupart du temps, ces éléments doivent être supprimés (ou si nécessaire commentés) avant de valider le projet (bien que parfois nous les ajoutons pour nous aider à trouver un problème que quelqu'un d'autre a rencontré - ces éléments doivent être supprimés ou commentés une fois que le problème est résolu).
* verbose: Toute sortie de débogage à haute fréquence.

