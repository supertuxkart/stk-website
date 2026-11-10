---
title: Donate
---
{% capture donation_heading -%}
{%translate "Donating to SuperTuxKart","Section title in the Donate page"%}
{%- endcapture %}

{% start_liquid main_title %}

{{ donation_heading }}

{% end_liquid %}

{%translate "If you enjoyed SuperTuxKart and would like to help the project, or just to say thank you, you may donate to help us!","Donate page"%}

{%translate "Donations help us improve the game, as they may be used for purchasing hardware, file hosting and distribution services, servers to host websites, paying artists to produce improved artwork, and more. You can learn more about our policy [here](Donation_Policy).","Donate page"%}

{%translate "We currently offer three main donation methods, with options for one-time donations and recurring donations. Donors also receive a gift package, no matter the chosen donation method.","Donate page"%}

**{%translate "The best way to make development sustainable is to join our Patreon. It also gives you access to exclusive articles about the game's development.","Donate page"%}**

<div class="cols">
<div class="card preferred-card">
    <p class="label">Preferred</p>
    <div class="card-main-content">
        <h3>Patreon</h3>
        <p>{%translate "Recurring support. Lets us plan beyond this month. Includes the Evolution preview gift tracks and more.","Donate page"%}</p>
    </div>
    <div style="text-align: center; max-width: 100%;">
        <a class="patreon-btn" href="https://members.supertuxkart.net/join">{%translate "Become a member","Donate page"%}</a>
    </div>
</div>

<div class="card">
    <p class="label">One-time</p>
    <div class="card-main-content">
        <h3>itch.io</h3>
        <p>{%translate "Pay what you want. Includes the Evolution preview gift tracks.","Donate page"%}</p>
    </div>
    <div style="text-align: center; max-width: 100%;">
        <a class="patreon-btn" href="https://supertuxkart.itch.io/supertuxkart/purchase">{%translate "Donate on itch.io","Donate page"%}</a>
    </div>
</div>

<div class="card">
    <p class="label">Private</p>
    <div class="card-main-content">
        <h3>Bitcoin &amp; Crypto</h3>
        <p>{%translate "Self-hosted BTCPay. No intermediary, no fees to a platform. Includes the Evolution preview gift tracks.","Donate page"%}</p>
    </div>
    <div style="text-align: center; max-width: 100%;">
        <a class="patreon-btn" href="https://btcpay.supertuxkart.net/apps/3zGzEF76X53syk2s4WcJcfxLyYJR/pos">{%translate "Donate with crypto","Donate page"%}</a>
    </div>
</div>
</div>

{%translate "We were recently [forced to preventively take our old PHP servers offline](https://members.supertuxkart.net/posts/supertuxkart-has-173200716). Most of the in-game online functionality has been restored thanks to our ongoing Python reimplementation, but there is still a lot of work to do before we can restore the addons website to service. **All donations until the end of November contribute to [our fundraiser](https://fund.supertuxkart.net/) to help restore full service.**","Donate page"%}

{% capture credits_heading -%}
{%translate "Major supporters","Section title in the Donate page"%}
{%- endcapture %}

{% start_liquid main_title %}

{{ credits_heading }}

{% end_liquid %}

{%translate "Patreon supporters at the 'Give Tux a nitro boost' tier or higher get their name on this page as a thank you.","Donate page"%}

<p class="top-supporter">Axovoxel</p>
<ul class="major-supporters"><li><span class="name">supercarlos64</span></li><li><span class="name">Pat Nafarrete</span></li></ul>

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

{%translate "To install the package, first retrieve the '1.5 Gift Package' on itch.io or [on Patreon](https://members.supertuxkart.net/posts/get-early-access-167770438).","Donate page - avoid double-quotes to not break the layout!"%}

{%translate "Then unzip the file, and follow the instructions in the included README. The procedure follows the [manual addons installation](Installing_Add-Ons) procedure.","Donate page"%}

{%translate "Unfortunately as of now, we are not able to offer an in-game installation procedure or a simple installation procedure for Android users. We are aware of this limitation, but we didn't want to delay 1.5's release to all users to solve it.","Donate page"%}
