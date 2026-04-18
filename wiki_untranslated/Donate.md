---
title: Donate
---
{% capture donation_heading -%}
{%translate "Donating to SuperTuxKart","Section title in the Donate page"%}
{%- endcapture %}

{% start_liquid main_title %}

{{ donation_heading }}

{% end_liquid %}

{%translate "If you enjoyed SuperTuxKart and would like to help the project, or just to say thank you, you may donate to help us! SuperTuxKart now uses itch.io to receive donations. Click on the 'Download Now' button and you will be able to select your donation amount.","Donate page - avoid double-quotes to not break the layout!"%}

{%translate "Donations help us improve the game, as they may be used for purchasing hardware, file hosting and distribution services, servers to host websites, paying artists to produce improved artwork, and more. You can learn more about our policy [here](Donation_Policy).","Donate page"%}

**{%translate "Do not hesitate to contact us if you have any questions or problems!","Donate page"%}**

{% include donation_frame %}

{% capture gift_package_heading -%}
{%translate "Gift Package","Section title in the Donate page"%}
{%- endcapture %}

{% start_liquid main_title %}

{{ gift_package_heading }}

{% end_liquid %}

{%translate "Alongside SuperTuxKart 1.5, a donation package including two tracks developed for SuperTuxKart Evolution - Drainage Dash and Freytra Peaks - is available for donations of 5$ or more.","Donate page"%}

<div style="text-align: center; max-width: 100%;">
<iframe width="100%" height="315" src="https://www.youtube.com/embed/tzTJgzzymBs" title="SuperTuxKart 1.5 Gift Package Trailer" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="max-width: 640px;"></iframe>
</div>

{% gallery widths=90%
/assets/wiki/1.5_gift_package.jpg
%}

{%translate "To install the package, first retrieve the '1.5 Gift Package' on itch.io, unzip the file, and follow the instructions in the included README. The procedure follows the [manual addons installation](Installing_Add-Ons) procedure.","Donate page - avoid double-quotes to not break the layout!"%}

{%translate "Unfortunately as of now, we are not able to offer an in-game installation procedure or a simple installation procedure for Android users. We are aware of this limitation, but we didn't want to delay 1.5's release to all users to solve it.","Donate page"%}

{% capture other_donation_heading -%}
{%translate "Other donation methods","Section title in the Donate page"%}
{%- endcapture %}

{% start_liquid main_title %}

{{ other_donation_heading }}

{% end_liquid %}

{%translate "Several community members have requested other methods to help fund SuperTuxKart.","Donate page"%}

{%translate "We are looking into ways to make recurrent donations possible.","Donate page"%}

{%translate "As a response to the request for more anonymous methods, we have established a way to donate using cryptocurrencies. Simply follow the instruction below. Everything is handled on supertuxkart.net! At the end of the process, you will also be able to retrieve the gift package.","Donate page"%}

{%translate "Please note that the minimum donation with this method is higher to avoid overhead from tiny transactions.","Donate page"%}

{% include alt_donation_frame %}




