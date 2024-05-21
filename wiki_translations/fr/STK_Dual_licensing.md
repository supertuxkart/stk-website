---
title: STK Dual licensing
display_title: true
---
**The plan is to dual-license STK under GPL and MPL**

Here's some background:

Back in 2017 we got STK greenlit on Steam, but as you all know until now STK is still not available on steam. The reason for this is not only the problem that we need a limited liability company, but also issues related to STK's current license: we cannot legally link the steam framework with STK, and without it STK on Steam would lack a lot of cool features which make Steam so convenient for users to play on - for example login with steam account to play STK online, steam achievements, ...

Another example of license related problems is that we integrated cryptography features which are used in online game play based on OpenSSL first, but later we realized that there is a conflict between the OpenSSL license and GPL. As a workaround we use Nettle which doubles the code size of STK and leads to maintenance overhead.

Few months ago we started making an iOS version of STK and again we can't put an STK app into the Apple Store. Additionally, the Minetest project decide to rewrite their engine and would like to use some of our code which could save a lot of effort (as you might have seen in the previous mail), but again it is not possible to make our sources available to this project because the Minetest license (LGPL2) is not compatible with GPL3 which STK is using.

Here's some information about MPLv2 license:

MPLv2 shares some similarity to GPLv2 when it comes to copyleft, this license requires all software using this license to disclose the changes (if any) when creating the binary based on it, but does not required the final product to have the same license, which GPLv3 requires. (See below for example usage with SDL2)

This will always make sure that any work done by anyone will always feed back to the community, and be useful for any other project that wants to use it. And due to the dual licensing, the code will still remain available under GPLv3. This mixture of licenses will allow us to publish STK as an iOS app, supply our code to Minetest, and we will keep on releasing the future code under GPLv3 as well.

After the dual licensing solves the above problems, this would also lead to a brighter future of STK: As you should notice in our blog we have ported STK to use SDL2 for input handling and window creation, SDL2 itself has console port which already exists which would allow console versions of STK much easier (for the record console STK is not possible at the moment, due to some non disclosure agreement which contradicts to GPL3).

You can have a look in our latest Haiku port: basically it requires just a few line definition for STK required library, the core stk-code does not need to be adapted for Haiku (and possibly any platform), because SDL2 will handle that and SDL2 does not use a restrictive license which makes console port possible.

We also plan to port STK to use Vulkan rendering, and if STK were using a more permissive license it would allow the community to reuse the code easier. And STK will be remaining free-to-play and open source as always.

Minetest reference: <https://github.com/supertuxkart/stk-code/issues/2381#issuecomment-158745140>)

Here is the list of contributors we would like to ask for agreement to dual-license STK code to MPLv2 or later version: (Updated Aug 28 to keep only remaining people need to be contacted)


Arthur-D

Bart Cools

Csaba Molnar

Daniel Ölschlegel

Dimitrije Jankov

Dk

Ethan Uzarowski

Igor Gnatenko

KristofDM

KroArtem

LeMagnesium

Liam Middlebrook

Mathieu Laprise

Max Teufel

MiroslavR

Nathan Osman

Rakesh Ranjan Nayak

River Marks

Ryan

Thomas Glamsch

Timothy Hamlett

Tobias Markus

Torbjörn Söderstedt

Unitraxx

Urtzi Odriozola

Vincent Lejeune

abhishek1995

amtkhdkr

cosmin.crecana

davemk

fHachenberg

hasufell

mbjornstk

quizywiz

rogue-spectre

sudip1401

thelittlegumnut

yasin-ghannam

If you think you should be contacted, please reach us at supertuxkart.official at gmail.com
