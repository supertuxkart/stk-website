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
{%- capture riscv_64 -%}
{%translate RISC-V 64-bit%}
{%- endcapture -%}
{%- capture all_archs -%}
{%translate all architectures,All-in-one architectures for STK installer / packages%}
{%- endcapture -%}

{%- capture linux_link -%}
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86_64.tar.gz
{%- endcapture -%}
{%- capture linux_content -%}
[**{{ full_game }}** (.tar.gz) {{ x86_32 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86.tar.gz)

[**{{ full_game }}** (.tar.gz) {{ x86_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-x86_64.tar.gz)

[**{{ full_game }}** (.tar.gz) {{ arm_32 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-armv7.tar.gz)

[**{{ full_game }}** (.tar.gz) {{ arm_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-arm64.tar.gz)

[**{{ full_game }}** (.tar.gz) {{ riscv_64 }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-linux-riscv64.tar.gz)

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
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-mac-signed.zip
{%- endcapture -%}
{%- capture apple_content -%}
[**{{ full_game }}** (.zip) {{ all_archs }}](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-mac-signed.zip)
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
https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-src.tar.gz
{%- endcapture -%}
{%- capture source_content -%}
[**{{ full_game }}** (.tar.gz)](https://github.com/supertuxkart/stk-code/releases/download/{{ site.stk_version }}/SuperTuxKart-{{ site.stk_version }}-src.tar.gz)

{%translate "To get the very latest code, see the page [Source control](Source_control)."%}
{%- endcapture -%}

{%- capture recommended_title -%}
..:: {%translate Recommended Installation%} ::..
{%- endcapture -%}
{%- main_title {{ recommended_title }}-%}

<div id="recommended-download-placeholder">
<span class="translate">{%translate Loading your recommended download...%}</span>
</div>

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

{%- capture itch_title -%}
..:: {%translate Download from Itch.io%} ::..
{%- endcapture -%}
{%- main_title {{ itch_title }}-%}

{%translate You can also download SuperTuxKart using itch.io. %}

{%translate A gift package with two tracks is also available for donators. See the [Donation page](Donate) for more details. %}

{% include donation_frame %}

{%- capture other_title -%}
..:: {%translate Other downloads%} ::..
{%- endcapture -%}
{%- main_title {{ other_title }}-%}

{%translate "The main download links provided above are for the last stable release, SuperTuxKart 1.5."%}

{%translate The automated preview release builds are available [here](https://github.com/supertuxkart/stk-code/releases/preview). %}

{%translate Public testing builds for SuperTuxKart Evolution are not yet available. %}
