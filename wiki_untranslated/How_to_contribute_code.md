---
title: How to contribute code
toc: true
---
_(Last verified to be up-to-date: 01/12/2025)_

## Introduction

The libre licensing of SuperTuxKart's code allows anyone to review and modify it. There are several codebases to which contributions are possible under the umbrella of the STK project: [the main codebase](https://github.com/supertuxkart/stk-code) used by the game itself, but also the code [for the addons website](https://github.com/supertuxkart/stk-addons) and the code [for the blender scripts](https://github.com/supertuxkart/stk-blender).

The rest of this page focuses primarily on the game's code, but many points are relevant for contributions to the secondary repositories.

Code contributions by new developers play a significant role to keep the project improving, whether it is about fixing a specific issue, implementing a specific feature, or becoming a more regular contributor helping to increase the pace of development.

Read this page carefully to learn how to contribute effectively to the improvement of SuperTuxKart!

## What are the needed skills?

The game's main codebase is primarily written in C++, while the Blender scripts are written in Python and the addons website code is primarily PHP.

For each of those, some general familiarity with Git, with programming and with the specific programming language involved is useful. It's fine to still be learning those skills provided you're willing to put in the effort to produce a good result and to search for information you are missing.

Finally, it is useful to be willing to communicate, to be open to feedback, and to have basic proficiency in English.

## Building from source

To contribute code to the game, it is very important that you can test your changes first.

In order to test your code changes, you need to be able to compile the project yourself.

SuperTuxKart uses Git for source code and SVN for assets. You should follow the instructions on the [Source Control page](Source_control) to install a Git-client, an SVN client and setup your code and assets folder.

Once that is done, you can refer to the [installation instructions](https://github.com/supertuxkart/stk-code/blob/master/INSTALL.md) to find how to build the game on your operating system.

After having successfully built the game from source, you can start experimenting with code changes.

## What to work on?

Seasoned contributors regularly have to work on tasks that they don't particularly like but that are necessary to improve the game, and bringing a new release together is an important motivation.

For new contributors, it is usually best to start with something simple, that you're comfortable with or that you would really like seeing in the game. That way, it will be easier to complete the task, and it's a good way to familiarize yourself with different parts of the process (such as using git or opening a pull-request on GitHub).

Things you can work on include:

* A new feature or capability you'd like to see in the game. See the "Communicating with the team" section to maximize chances it will be merged.
* Solving [existing tickets](https://github.com/supertuxkart/stk-code/issues). Check the list and find something you'd like to work on.
* Changes that improve code quality. This is usually not the focus of new contributors because it feels less exciting, but be assured that **the STK team will be much happier seeing the code become simpler, clearer and faster rather than being made more complicated**. As is, the game code of STK has a significant amount of technical debt, and there is plenty to do. Check first however if the problem is still relevant in the [STK Evolution branch](https://github.com/supertuxkart/stk-code/tree/BalanceSTK2), as it also includes some code quality improvements.

A complementary way to approach this is to look at the main areas of development:

* User Interface – this can involve fixing issues specific to a screen, but most useful are improvements to the GUI Engine itself that will help making all the GUI screens better.
* Gameplay – a core part of the code with a very wide variety of components: physics, powerups, game modes... This is the part of the game that modders most often change. For gameplay contributions to be accepted in the main game, communication with the team is particularly important.
* Graphics – a crucial part of the code, but not suited for newbies. Our team is currently lacking the manpower to properly focus on it, so help would be very valuable.
* Networking – this can involve for example enhancing the features of online servers, or improving the quality of the net-code (a lot of it is arcane).
* Utilities and Libraries – this can involve updating libraries and dependencies used by the game (for example, STK is currently using SDL2 but it would be beneficial to move to SDL3), ensuring proper support of newer toolchains, as well as improving various utilities used throughout the main code. 
* Extra functionalities – replays, achievements, scripting...

## Communicating with the team

Depending on what you want to do, there are different possible approaches:

* For unambiguous fixes, such as correcting compiler warnings or clear improvements to code quality, opening a pull-request is generally sufficient.
* If you want to take care of an existing issue, it is a good idea to write a comment saying so under the issue. This helps to avoid duplicate work, but can also be helpful to ask questions and clarify the intended scope of the ticket.
* If you want to implement a completely new feature and would like to see it in the main game, it is best to create a thread [on our forum](https://forum.supertuxkart.net/) about it, to explain what you want to do and to gather feedback. This will help ensure that what you create meets our needs. Of course, possibilities are endless when it comes to mods, but understand that for the main game we need to be selective.
* Finally, if you are not sure which issue to pick but would like to contribute, you can offer your services on the forum and our team will suggest things to work on.
* If you have questions related to the code, you can use a forum thread or write a private message to Alayan, our lead developer. The existing game code can sometimes be arcane. Understand however that some autonomy is expected. The STK team can give you tips, but we shouldn't spend more time advising you and reviewing your code than we would have doing things ourselves.

The default language used for communication is English, but it is also fine to use French or German for the forum threads (use the appropriate sections) and for direct communication with the team.

Keep in mind that feedback will focus more on what's unsatisfactory with your code or idea than on what's already good, because what's already good doesn't need to be changed. In general, assuming good intentions from the other party is helpful to clear up potential misunderstandings.

## Writing good code

Teaching how to write good quality code is beyond the scope of this document. However, to maximize the chances of your contribution being merged and to simplify future updates to the codebase, clear and well-structured code is very important.

Here are some general reminders:
* Try to ensure that your new code fits in with the style of existing code. The [coding style](Coding_Style) page is not fully up-to-date but contains some valuable advice.
* Pick clear names for your variables and functions that tell what they are for.
* While it's not possible to test on all platforms, do your best to write portable code, and to resolve any warning that the compiler gives you for your code.
* Try to minimize data dependencies. A more complex tree of interactions means a more difficult to understand code and higher odds for bugs.
* Write the code yourself. Code hallucinated by a LLM is not acceptable.
* **Test your code often.** Validating the correctness of each new step will often save you a lot of time in the end, as the source of the error will be clearer. When you think you are done, try to think of potential corner cases and test them. It's not fun for anyone when the reviewer uncovers a significant bug within two minutes of testing.
* Before making a commit, read over your code and check if everything makes sense. This often helps to catch mistakes or unnecessary pieces of code.

## Opening a Pull Request

Once your code is finished, and you have properly tested it works as intended, it is time to submit your changes to the main repository. You can look at [Github's documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) for how to create a pull request.

**Make sure to avoid pull requests that are mixing several unrelated changes, or that are trying to do too much at once** (such as implementing a new feature, and then adding a lot of bells and whistles to the base feature).

The more changes a PR contains, and the more complex it becomes to review. The commit history of the branch can help to make sense of a PR, however those commits often contain intermediate changes that got removed in the final version, and it increases the review workload to try to piece things together. Furthermore, the final history of the 'master' branch will only contain one commit. Therefore, if your PR is too complex, you will be asked to split it up in smaller PRs.

As a general guideline, if your PR has more than 200 lines of change, you should double-check that it all really need to be in the same PR. At the same time, the code in the PR still needs to function as an independent unit: it should compile and work.

**Pick a clear title, and summarize what your changes are about.** The main comment is also a good place to explain some of the technical decisions you have made, easing the task of the reviewer. The GPLv3/MPLv2 dual-licensing notice has to be kept.

Check the "Allow edits by maintainers" box so that small issues (for example, a typo in a comment or a small coding style issue) can be directly fixed without needing a round of back-and-forth.

If a member of the STK team asks you a question about your code or gives you feedback about an element that should be improved, try to satisfy the request.

The duration between the submission and the merge of the PR can vary from a few hours to a few weeks depending on code complexity and the availability of the team's developers, although usually you will receive comments within a few days. PRs older that are a few months old usually contain some element that make them unsuitable for direct merging in their current state.

If you think your PR has been forgotten, you can tag a team member to request a review, but do not abuse this possibility.

Once your PR has been merged, congratulations, you helped to make the next version of SuperTuxKart!

{% include code_portal %}