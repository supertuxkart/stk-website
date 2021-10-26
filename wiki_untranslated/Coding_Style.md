---
title: Coding Style
toc: true
---
This is our preferred coding style. It was inspired by [Google's coding style](https://google.github.io/styleguide/cppguide.html), but this set is only a small subset of it. Currently, not all our sources are following this style, and we welcome any patches to improve this.

Most of the sources follow this coding style, and the rest is being re-styled as we continue development.

## File names and directories
* All include files should end in .hpp, all sources are .cpp (this allows shell commands to easily specify all sources: *.?pp).
* All file names are in lower case, with _ as a word separator, e.g.: `grand_prix_ending.hpp` (while classes inside the files will use camel case, e.g. `GrandPrixEnding`).
* Files should be grouped in appropriate subdirectories. Avoid having more than one level of subdirectories.
* The file names should represent the name of the classes it contains, e.g. `grand_prix_ending.hpp` contains the class `GrandPrixEnding` (see [Coding](#coding) below). Not more than one class should be declared inside a single file.

## Including files
* In file XX.cpp first include the corresponding XX.hpp file if available (this guarantees that the header has no hidden dependencies). Then include:
    * STK header files.
    * Libraries that are included with the STK source code (bullet, enet, irrlicht),
    * External libraries used by STK (OpenAL, ...),
    * System files and STL,
    * Sort the header files alphabetically in each sections - e.g. for STK sources: first files in src, then the files from the different subdirs. This makes it much easier to spot if a file is included more than once.
* Use a `#ifdef` header guard in the following form to protect against multiple include: `HEADER_FILE_NAME_HPP`. I.e. `HEADER_` followed by the filename in all caps, with "." replaced by "_".
* Even when including a .hpp file that is in the same subdir (say `font/font_manager.hpp` in `font/font_with_face.cpp`), use the path including the subdir, i.e.:
{%popup_code
c++
#include "font/font_manager.hpp"%}
and not
{%popup_code
c++
#include "font_manager.hpp"%}
This makes it easier to move files into different directories.
* If possible, use a simple `class XYZ` forward declarations instead of including the header file. This will reduce the amount of recompilation necessary when modifying files (see [here](https://google.github.io/styleguide/cppguide.html#Forward_Declarations) for more details). Even if this means that small functions that could be inlined are moved from the header file to the cpp file (unless it's a time critical function).

## Layout
* 4 spaces for indentation
* **No tabs**
    * Using tabs means that the files might be displayed differently from one editor to the next, or when viewed in a terminal. All editors have an option to use spaces instead of tabs.
    * You can use `tools/whitespaces.py` to get rid of them. (They'll be replaced with 4 spaces)
* Both the opening and the closing braces should be on a line of their own. That means:
{%popup_code
c++
int main()
{
    return 0;
}%}

Exceptions to this are one line functions in header files:
{%popup_code
c++
float getValue() const { return m_my_value; }%}

* In header files try to align declaration and definitions in columns (e.g. first column type, 2nd column function name). This might not always be possible, but a more structured header file is easier to read and understand). Example:
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
* Start with private declarations, then the public ones (this might be a bit unusual: the idea is that the doxygen output is sorted with public declarations first, which is what people studying the code should look like. If you are actually looking at the sources, you are more likely interested in the implementation, so having this come first saves scrolling down time).
* Try not to use more than 80 characters in a line (soft limit).
* Have a line `// ------------------------` (up to 80th column) separating each function definition (see [Doxygen](#doxygen) for an example)
* If the closing } is more than a few lines away from the opening {, or if there are multiple curly braces in-between, add a comment indicating what this } closes. This comment can be an informal comment, or just be the corresponding opening statement. E.g:
{%popup_code
c++
}   // for i in all karts%}
or
{%popup_code
c++
}   // for(int i = 0; i < m_num_karts; i++)%}
* It should be avoided to have more than one class in a file. If you can't avoid it, separate them with `// ============` (up to the 80th column)
* In case of an `else if()` statement, the `else` and `if` go on the same line.

## Doxygen
Use Doxygen comments. The comments for variables should be just before their declaration, and functions should be documented where they are implemented, and not where they are defined. I.e. don't document functions in the header file if they are implemented in the corresponding cpp file. Reason for this is that this way the documentation is on the screen when you debug. If you want to study the interface of a class, just look at the doxygen documentation, and all information is on one screen. But if you debug you want to know what a function is doing, then having to look at the header file is annoying. It's also easier to keep implementation details and comments in sync.

The following format should be used (Doxyfile is set up to use the first sentence as a brief description).
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

Each function should have a corresponding doxygen documentation, briefly explaining what the function does, its parameters, and any exceptions it might raise. Really simple functions (for example setters and getters), that do not raise an exception or have any preconditions, might not need documentation, this is left to the discretion of the reviewer.

## Coding
* Use `const` instead of `#define` if possible.
* References should only be used as `const`: `const Kart& k` . If an object is modified, pass it in as a pointer. This makes it more obvious which values are modified.
* If possible, all parameters of functions should be `const` correct (i.e. if it's not modified, it should be declared `const`).
* Try to sort parameters with input first, then output parameters.
* Compile time constant values should be all uppercase, e.g. `const float PI = 3.1415f`.
* Member variables start with m_ , e.g. `m_kart`.
* Variable names are lower case separated by _. Example: `sun_position` (member variable: `m_kart_pointer`).
* Function names should be capitalized, except the first word. Example: `getWidth()`.
* Avoid the use of `std::tuple` and `std::pair`, instead use a simple class or struct so that all variables are properly named (instead of say a `std::get<2>()`).
* Type (including classes/struct/enum) names have all their words capitalized. Example: `KartControl`.
* The actual enums should be in uppercase, and contain a prefix to make it obvious where the enum is coming from. Example: `ATTACH_BOMB`, `ATTACH_ANVIL`, ...
* Use `true` / `false` instead of `TRUE` / `FALSE`. In [this mail](http://lists.kde.org/?l=kde-devel&m=111737503228222&w=2) it's written that uppercase booleans are used only for older compilers, so we should try to avoid this inconsistency.
* Use `std::string` instead of `char*`. If you need a C-style string, use the function `std::string.c_str()`. However, there are cases when this cannot be avoided (like when using strings with gettext).
* Use `std::min()` / `std::max()` instead of a `#define` (Windows needs `NOMINMAX` to be defined before including `windows.h`).
* Avoid using `friend` for classes
* Use postfix operators like `i++`, not `++i` (unless there is a difference, e.g. if i should be a class, not a simple type). It was checked that there is no difference in the created code, and we developers prefer postfix, and having our code consistent.

## Portability
Here are a few hints about keeping Super TuxKart portable. Please consider those items when adding new source code, or cleaning up existing source code. The goal is to compile STK on as many platforms as possible, and remove all the warnings we can.

* Even though `<algorithm>` is implicitly included in `std::string` on linux, this is not the case on all platforms (and might potentially change anytime on linux as well). So please make sure to include `<algorithm>` when using algorithms from the STL, e.g. find etc.
* On at least Windows and Macs textures are lost when switching between fullscreen and window mode. If any textures are used, please make sure that they get deleted and reloaded when switching, see `sdldrv::drv_toggleFullscreen` for this.
* Windows prints out a warning whenever a double precision value is specified where a normal float is expected. So to avoid these warnings you should always mark any float constants to be single precision, e.g.: use **1.0f** instead of just **1.0**.
* To link a file, be sure that there is no space between the arguments and the filename, for example, `-Lbullet/Demos/OpenGL` not `-L bullet/Demos/OpenGL`, since it causes problems on Macs.
* Some compilers (for example, VC6) don't support initialization of static member variables inside the class declaration, so write the initialization in the implementation file (the .cpp file).
* Under Windows, a warning is printed if you convert an int to an OpenGL variable type implicitly `( GLint a = b; )`, so please do so explicitly `( GLint a = (GLint) b; )`.

## Logging
We have a separate class to Log messages for the user. This class should be used for any message that's printed on the terminal (or might be redirected into a file so that users can give us this data). Normal printf/cout/cerr are still used in many files, but this is deprecated. The various levels should be used as follows:
* fatal: Anything that causes STK to abort.
* error: Any error which still allows STK to continue as normal, but might have visual (or other) impact. Missing textures would be an example.
* warn: Any warning that is detected, which should not cause a difference in STK that's important for a player. An example would be if the window location can not be read: it doesn't matter that much that the windows is shown at a different location.
* info: Any useful info a player should always have in case that something goes wrong. An example would be paths to various directories.
* debug: Debug output, which would only be seen by developers. Mostly those should be either removed (or if necessary commented out) before committing (though sometimes we add those in in order to help us finding a problem someone else has - those should be removed or commented out once the issue is fixed).
* verbose: Any high-frequent debug output.
