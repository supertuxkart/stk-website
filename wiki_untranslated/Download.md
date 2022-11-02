---
title: Download
---
{%- capture full_game -%}
{%translate Full game,Full game installer / packages for STK%}
{%- endcapture -%}
{%- capture x86_32 -%}
{%translate Intel / AMD 32-bit%}
{%- endcapture -%}
{%- capture x86_64 -%}
{%translate Intel / AMD 64-bit%}
{%- endcapture -%}
{%- capture arm_32 -%}
{%translate ARM 32-bit%}
{%- endcapture -%}
{%- capture arm_64 -%}
{%translate ARM 64-bit%}
{%- endcapture -%}
{%- capture all_archs -%}
{%translate all architectures,All-in-one architectures for STK installer / packages%}
{%- endcapture -%}

{%- capture linux_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86_64.tar.xz
{%- endcapture -%}
{%- capture linux_content -%}
[**{{ full_game }}** (.tar.xz) {{ x86_32 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86.tar.xz)

[**{{ full_game }}** (.tar.xz) {{ x86_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86_64.tar.xz)

[**{{ full_game }}** (.tar.xz) {{ arm_32 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-armv7.tar.xz)

[**{{ full_game }}** (.tar.xz) {{ arm_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-arm64.tar.xz)

{%translate Extract and run **run_game.sh** inside the folder.%}
{%- endcapture -%}

{%- capture windows_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-installer-x86_64.exe
{%- endcapture -%}
{%- capture windows_content -%}
[**{{ full_game }}** (.exe) {{ x86_32 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-installer-i686.exe)

[**{{ full_game }}** (.exe) {{ x86_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-installer-x86_64.exe)

[**{{ full_game }}** (.exe) {{ arm_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-installer-aarch64.exe)

[**{%translate Installer-less archive%}** (.zip) {{ all_archs }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-win.zip)
{%- endcapture -%}

{%- capture apple_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-mac.zip
{%- endcapture -%}
{%- capture apple_content -%}
[**{{ full_game }}** (.zip) {{ all_archs }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-mac.zip)
{%- endcapture -%}

{%- capture android_link -%}
https://play.google.com/store/apps/details?id=org.supertuxkart.stk
{%- endcapture -%}
{%- capture android_content -%}
[**{%translate Get on Google Play Store%}**](https://play.google.com/store/apps/details?id=org.supertuxkart.stk)

[**{%translate Get the APK%}** ({{ all_archs }})](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}.apk)
{%- endcapture -%}

{%- capture switch_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-switch.zip
{%- endcapture -%}
{%- capture switch_content -%}
[**{{ full_game }}** (.zip)](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-switch.zip)

{%translate Unzip the archive to microSD root to install.%}
{%- endcapture -%}

{%- capture source_code -%}
{%translate Source Code%}
{%- endcapture -%}
{%- capture source_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-src.tar.xz
{%- endcapture -%}
{%- capture source_content -%}
[**{{ full_game }}** (.tar.xz)](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-src.tar.xz)

{%translate "To get the very latest code, see the page [Source control](Source_control)."%}
{%- endcapture -%}

{%- capture github_title -%}
..:: {%translate Download from GitHub%} ::..
{%- endcapture -%}
{%- main_title {{ github_title }}-%}

{%- include_relative_untranslated _Download.inc main_link=linux_link
os="linux" name="Linux" content=linux_content
-%}
{%- include_relative_untranslated _Download.inc main_link=windows_link
os="windows" name="Windows" content=windows_content
-%}
{%- include_relative_untranslated _Download.inc main_link=apple_link
os="apple" name="macOS" content=apple_content
-%}
{%- include_relative_untranslated _Download.inc main_link=android_link
os="android" name="Android" content=android_content
-%}
{%- include_relative_untranslated _Download.inc main_link=switch_link
os="switch" name="Switch Homebrew" content=switch_content
-%}
{%- include_relative_untranslated _Download.inc main_link=source_link
os="source" name=source_code content=source_content
-%}

{%translate Preview release is available [here](https://github.com/supertuxkart/stk-code/releases/preview).%}

{% capture rc_string -%}
{%translate_sentence Get the latest release candidate:%}
{%- endcapture %}

{%- if site.stk_rc != '' -%}
{{ rc_string }}[{{ site.stk_rc }}](https://github.com/supertuxkart/stk-code/releases/{{ site.stk_rc }})
{%- endif -%}

{% capture itch_title -%}
..:: {%translate Get SuperTuxKart on Itch.io%} ::..
{%- endcapture %}
{% main_title {{ itch_title }}%}
<div class="download-content" style="font-size: 1rem; opacity: 1.0;">
<div class="download-left" style="text-align: center;">
{%- include donation_frame -%}
</div>
<div class="download-right">
<i class="fa fa-download fa-fw fa-2x"></i>
</div>
</div>
