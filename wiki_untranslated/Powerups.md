---
title: Powerups
---

{% capture current_powerups -%}
{%translate "SuperTuxKart 1.5's Powerups","Powerups page - main section title"%}
{%- endcapture %}
{%main_title {{ current_powerups }} %}

{%- capture bubblegum -%}
{%translate "Bubblegum","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture zipper -%}
{%translate "Zipper","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture swatter -%}
{%translate "Swatter","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture bowling_ball -%}
{%translate "Bowling Ball","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture cake -%}
{%translate "Cake","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture plunger -%}
{%translate "Plunger","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture parachute -%}
{%translate "Parachute","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture basket_ball -%}
{%translate "Basket Ball","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture swapper -%}
{%translate "Swapper","Powerups page - powerup name"%}
{%- endcapture -%}

{%- capture details_title -%}
{%translate "Details","Powerups page - subsection title"%}
{%- endcapture -%}

{%- capture tips_title -%}
{%translate "Usage Tips","Powerups page - subsection title"%}
{%- endcapture -%}

{%- capture distribution_title -%}
{%translate "Distribution","Powerups page - subsection title"%}
{%- endcapture -%}


{%translate "**SuperTuxKart 1.5 features 9 distinct powerups** with varied effects. They can be obtained by collecting the gift boxes located on the track.","Powerups page - introduction"%}

{%translate "The distribution of powerups in SuperTuxKart depends on kart position and on the total number of karts, with karts further back getting better powerups to help them catch up. The strength of this catch up effect is moderate compared to typical kart-racing games. In modes without positions, all karts share the same distribution.","Powerups page - introduction"%}

{%translate "If a new gift box is collected, the new randomly selected powerup replaces the previously held powerup, unless it happens to be a powerup of the same type, in which case the amount held increases (for example, a kart holding one cake and collecting another cake will hold two cakes).","Powerups page - introduction"%}

{%translate "When collecting a powerup with a gift box, **it is also possible to get some powerups in groups of 3**.","Powerups page - introduction"%}

{%translate "**Several powerups produce a different effect or are launched in a different direction if used while looking towards the back.**","Powerups page - introduction"%}

{%translate "Finally, it should be noted that if a kart is hit by one of the exploding powerups (basket ball, bowling ball, or cake), it will receive a temporary immunity lasting 7 seconds, protecting against all attacking powerups. This is meant to limit situations where a kart is hit again while vulnerable because of a previous attack.","Powerups page - introduction"%}

<table>
<tr>
{%- capture bubblegum_details -%}
{%translate "The protective gum shield lasts up to 10 seconds. It protects from all threats except basket-ball squashing, but it is destroyed in the process. The shield also allows to safely drive over gums on the ground.","Powerups page"%}

{%translate "If a new gum shield is used while one is already active, the duration of the current shield is extended by another 10 seconds.","Powerups page"%}

{%translate "When the gum shield is about to expire, it starts flashing. As it expires, a gum is dropped on the ground, with the same effects as the one that can be dropped by using it towards the back.","Powerups page"%}

{%translate "Gums laying on the ground are fairly wide and slow down massively karts that drive on them. Gums on the ground disappear after a kart drives on them.","Powerups page"%}
{%- endcapture -%}

{%- capture bubblegum_tips -%}
{%translate "Most of the time the shield is the better choice, but directly dropping the gum on the ground is useful in a few situations:","Powerups page"%}
* {%translate "To block a narrow path.","Powerups page"%}
* {%translate "To lay a trap in the location of a nitro can. Big nitro cans work especially well for such traps, as they are very tempting to get and help partially conceal the gum on the ground. Even if your rivals avoid your trap, this can still make them lose time by denying them nitro. Just avoid driving on your own trap in a later lap!","Powerups page"%}
* {%translate "If a rival kart is closely following you. Looking back a little bit before using the powerup can be a good idea to ensure the other kart won't just drive around it.","Powerups page"%}

{%translate "Use the shield immediately if you are threatened by other karts or are slowed down by penalties such as parachutes. If there is no immediate threat, delay the shield activation, but don't forget to activate it before taking a new gift box.","Powerups page"%}

{%translate "If you have a bomb, it can be a good idea to delay the use of the gum shield until the bomb's timer enters the red zone or until you are about to get a new powerup from a gift box: you may have an opportunity to pass the bomb to another kart, or you may receive a parachute from a kart behind you. In this last case, the parachute will remove the bomb and keeping the bubblegum allows you to get rid of the parachute by activating the shield.","Powerups page"%}

{%translate "Finally, if you get a group of 3, you should use one immediately as a shield for safety, as the opportunity cost is very low. With the remaining two gums, you can decide if it's better to lay out traps on the road for your rivals or to refresh your shield before the next gift box.","Powerups page"%}
{%- endcapture -%}

{%- capture bubblegum_distribution -%}
{%translate "The bubblegum is relatively common for all positions in the race. It is most common for karts in bad positions.","Powerups page"%}

{%translate "The karts that are furthest behind can also obtain the bubblegum in groups of 3.","Powerups page"%}
{%- endcapture -%}

{%- capture bubblegum_desc -%}
{%translate "The bubblegum is SuperTuxKart's main defensive powerup. Its two different usage modes give it additional flexibility.","Powerups page"%}

{%translate "When used normally, it activates a defensive gum shield protecting the kart. When used towards the back, it drops a gum on the ground that will slow any kart driving on it.","Powerups page"%}

{% start_liquid qa %}

{{ details_title }}

{{ bubblegum_details }}

{% end_liquid %}

{% start_liquid qa %}

{{ tips_title }}

{{ bubblegum_tips }}

{% end_liquid %}

{% start_liquid qa %}

{{ distribution_title }}

{{ bubblegum_distribution }}

{% end_liquid %}

{%- endcapture -%}

{% include presentation_small_with_flow name=bubblegum type="odd" description=bubblegum_desc icon="/assets/wiki/Powerup_bubblegum_icon.png" icon_width="128px" alt_text="The bubblegum powerup's icon" %}


{%- capture zipper_details -%}
{%translate "The zipper gives an immediate speed boost of 4.5 and a max speed increase of 15 (equivalent to 60% of the base max speed in SuperTux difficulty), lasting for 3.5 seconds with a fade-out time of 1 second.","Powerups page"%}

{%translate "It also gives an engine boost of 250 (equivalent to 26% of a heavy kart's base engine power in SuperTux difficulty), increasing acceleration to help take advantage of the increased max speed.","Powerups page"%}

{%translate "The start boost and ground zippers also provide speed boosts of the 'zipper' type: they do not stack up, only the latest one is active.","Powerups page"%}
{%- endcapture -%}

{%- capture zipper_tips -%}
{%translate "On a surface level, the zipper is very simple: use it and go faster. However, there are several mistakes that can reduce its usefulness.","Powerups page"%}

{%translate "**The first mistake to avoid is using the zipper when the extra speed would make the kart too difficult to control**, for example before tight curves or an area with hazards. What exactly qualifies as a spot where it would make the kart too difficult to control depends on the player's skill level, but it is much better to wait for a more suitable area (such as a long straight or gentle curve) than to crash.","Powerups page"%}

{%translate "**If a gift box is coming soon, it often makes sense to avoid the gift box entirely to keep your zipper** if you cannot use it safely before the box, as you are unlikely to find a better powerup in there. If you are in the last positions, taking the gift box is more of a gamble as you may get an additional zipper."%}

{%translate "**Another common mistake is using multiple zippers in close succession or too close from a ground zipper.** While the instant speed boosts compound (up to the increased max speed), the overall boost duration is shorter than otherwise possible. A rapid speed change can also make it more difficult to control the kart.","Powerups page"%}

{%translate "By using additional zippers only when the effect of a previous zipper or ground zipper starts fading out, the time spent with extra speed can be greatly increased","Powerups page"%}

{%translate "Finally, to make the most of a zipper's increased max speed, you need to accelerate as much as possible. Drift bonuses provide a small instant speed increase, and nitro multiplies engine power: coordinating nitro and drift timings with your zipper saves time.","Powerups page"%}

{%translate "Note that drifting and nitro provide their own increase to max speed. Therefore, ideally, you should already have your speed increased from drifting and nitro when you activate the zipper, with additional drifts and nitro usage during the zipper's boost period.","Powerups page"%}
{%- endcapture -%}

{%- capture zipper_distribution -%}
{%translate "The zipper can be obtained in any position, but it is much more common for bad positions than for good positions. It is the second most common powerup overall, and the most common for karts in bad positions.","Powerups page"%}

{%translate "The karts that are furthest behind can also obtain the zippers in groups of 3.","Powerups page"%}
{%- endcapture -%}

{%- capture zipper_desc -%}
{%translate "The zipper gives a very powerful speed increase, helping karts in the back to catch up.","Powerups page"%}

{%translate "The bonus is made of three parts: an instantaneous boost, a huge increase to the kart's maximum speed, and a significant boost to acceleration.","Powerups page"%}

{% start_liquid qa %}
{{ details_title }}

{{ zipper_details }}
{% end_liquid %}

{% start_liquid qa %}
{{ tips_title }}

{{ zipper_tips }}
{% end_liquid %}

{% start_liquid qa %}
{{ distribution_title }}

{{ zipper_distribution }}
{% end_liquid %}

{%- endcapture -%}

{% include presentation_small_with_flow name=zipper type="even" description=zipper_desc icon="/assets/wiki/Powerup_zipper_icon.png" icon_width="128px" alt_text="The zipper powerup's icon" %}
</tr>
<tr>
{%- capture swatter_details -%}
{%translate "**If the swatter is activated while an attachment is active, it will remove the existing attachment.** If the removed attachment is a bomb, the swatter will be used and removed, in other cases the swatter will remain fully active.","Powerups page"%}

{%translate "The swatter remains active for 10 seconds. During this period, the swatter arm rotates towards the closest kart, and squashes it if it gets close enough (provided the target kart is not invulnerable). Squashed karts lose 50% of their speed for 5 seconds.","Powerups page"%}

{%translate "In racing modes, the swatter can squash multiple targets before it expires. In Battle and Soccer, the swatter is removed after squashing one target.","Powerups page"%}

{%translate "The swatter is also removed by events that give the kart a new attachment (using a gum shield, hitting a banana, etc.).","Powerups page"%}
{%- endcapture -%}

{%- capture swatter_tips -%}
{%translate "The swatter is a powerful powerup, but proper timing and tactics are important to make the most out of it.","Powerups page"%}

{%translate "**When the swatter is active, it is very effective at preventing other karts from overtaking.** Although it is a short-range weapon, it still covers a significant chunk of the track's width and proper positioning makes it difficult for other karts to safely go around.","Powerups page"%}

{%translate "The swatter needs 0.5s after use before it is ready to squash targets, and it also requires a bit of time to aim and attack. It is therefore better to anticipate than to use it at the last second.","Powerups page"%}

{%translate "If a rival kart is close behind you, slowing down can be an effective tactic: you might lose a bit of time, but you force the other kart to either brake or be squashed and lose even more time. In this situation, it is important to consider the general race situation to see if losing a bit of time compared to most karts is worth gaining a lot of time compared to the kart close behind.","Powerups page"%}

{%translate "If your kart is already slowed down by a parachute, using the swatter immediately is usually the best choice.","Powerups page"%}

{%translate "If your kart has a bomb, it is often a good idea to delay the use of the swatter until the bomb's timer enters the red zone or until you are about to get a new powerup from a gift box: you may have an opportunity to pass the bomb to another kart, or you may receive a parachute from a kart behind you. In this last case, the parachute will remove the bomb and keeping the swatter allows you to get rid of the parachute.","Powerups page"%}

{%translate "If there is no rival kart close by or if you already have a bubble gum shield active, it is often best to delay the use of the swatter. This allows to keep it active longer to threaten other karts when you get closer to them, but more importantly it keeps it available to remove potential parachutes and bombs.","Powerups page"%}
{%- endcapture -%}

{%- capture swatter_distribution -%}
{%translate "The swatter is available for most positions in the race, but is more common in better positions, where it is particularly appreciated for its help against the threat of parachutes.","Powerups page"%}
{%- endcapture -%}

{%- capture swatter_desc -%}
{%translate "The swatter is a versatile powerup, combining powerful short-range attacks and significant utility.","Powerups page"%}

{%translate "When active, the swatter will flatten any kart that drives too close, slowing them down significantly. It can also be used to remove harmful attachments such as bombs and parachutes.","Powerups page"%}

{% start_liquid qa %}
{{ details_title }}

{{ swatter_details }}
{% end_liquid %}

{% start_liquid qa %}
{{ tips_title }}

{{ swatter_tips }}
{% end_liquid %}

{% start_liquid qa %}
{{ distribution_title }}

{{ swatter_distribution }}
{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=swatter type="odd" description=swatter_desc icon="/assets/wiki/Powerup_swatter_icon.png" icon_width="128px" alt_text="The swatter powerup's icon" %}


{%- capture bowling_details -%}
{%translate "The bowling ball triggers a standard explosion (1.5 seconds) if it touches a kart. It can rebound on walls and other obstacles, which can sometimes be taken advantage of.","Powerups page"%}

{%translate "If two bowling balls touch each other, they will both disappear.","Powerups page"%}

{%translate "If the bowling ball fails to hit a target, it expires after 20 seconds.","Powerups page"%}

{%translate "There are some quirks in how the bowling ball's speed is computed:","Powerups page"%}
* {%translate "At typical kart speeds, when thrown forward, the bowling ball will move (relatively to the track) at twice the kart's speed plus 8, but it has a minimum speed of 32 (about the speed of a heavy kart using nitro in SuperTux difficulty).","Powerups page"%}
* {%translate "When thrown backward, it moves at a speed of 16 relatively to the track, in the direction opposite to which the kart is pointing. In this case, the bowling ball's speed is completely independent of the kart's speed.","Powerups page"%}

{%translate "The bowling ball slows down over time. Its path and speed are influenced by changes in elevation, as it will naturally tend to roll down slopes.","Powerups page"%}

{%translate "The kart firing the bowling ball is immune to it for the first two seconds, however, past this delay, the kart that fired the bowling ball will also exploed touching it.","Powerups page"%}
{%- endcapture -%}

{%- capture bowling_tips -%}
{%translate "The bowling ball requires careful aiming to maximize your odds of touching your target, by aligning the direction your kart is going towards with the direction you want to fire the ball towards.","Powerups page"%}

{%translate "As the bowling ball is not very fast, anticipating what your target is likely to do and firing the ball from a closer distance increase your success rate.","Powerups page"%}

{%translate "If you have three balls, you can be a little less accurate with your aiming: if you fire your balls in relatively close succession in a line that the target kart will have to cross (to take a curve for example), you have good chances to score a hit.","Powerups page"%}

{%translate "**If you don't have any rival kart nearby, it is often a good idea to fire the ball towards the back**, as other karts arriving a few seconds later will still have to dodge them.","Powerups page"%}

{%translate "The bowling ball can also be used to defend against basket balls by firing it backwards, however getting the timing right is very difficult, so it is rarely successful.","Powerups page"%}

{%translate "Finally, avoid mindlessly firing bowling balls when there is no target, as this sometimes leads to the ball rebounding on an obstacle towards your path and exploding you.","Powerups page"%}

{%translate "The bowling ball is also commonly used in Soccer mode to push the puck or the ball from a distance.","Powerups page"%}
{%- endcapture -%}

{%- capture bowling_distribution -%}
{%translate "The bowling ball is SuperTuxKart's most common powerup. It is found in all positions, but is more common for karts in good positions.","Powerups page"%}

{%translate "The bowling ball can be found in groups of 3. This is possible in most positions, but happens much more frequently for karts in bad positions.","Powerups page"%}
{%- endcapture -%}

{%- capture bowling_ball_desc -%}
{%translate "The bowling ball is SuperTuxKart's most common powerup."%}

{%translate "A medium-range attacking powerup, it sends a ball rolling in a straight line, which will explode if it touches a kart. It can be used both forward and backward.","Powerups page"%}

{% start_liquid qa %}
{{ details_title }}

{{ bowling_details }}
{% end_liquid %}

{% start_liquid qa %}
{{ tips_title }}

{{ bowling_tips }}
{% end_liquid %}

{% start_liquid qa %}
{{ distribution_title }}

{{ bowling_distribution }}
{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=bowling_ball type="even" description=bowling_ball_desc icon="/assets/wiki/Powerup_bowling_icon.png" icon_width="128px" alt_text="The bowling ball powerup's icon" %}
</tr>
<tr>
{%- capture cake_details -%}
{%translate "**The cake is a medium-range attacking powerup and requires line-of-sight with the target to work.** If there is no adequate target within the max aiming distance of 90, it is thrown straight ahead without aiming at anything.","Powerups page"%}

{%translate "**Although the cake's automatic aiming makes it quite dangerous, it is possible for it to miss sometimes**, particularly if the target is farther away and changes speed or direction, as the cake's trajectory does not change after it has been thrown.","Powerups page"%}

{%translate "There are some peculiarities with regard to the speed at which the cake is thrown:","Powerups page"%}
* {%translate "The cake's speed is applied relatively to the track instead of the kart. This unintuitive quirk makes cakes thrown backwards near unavoidable, as the target kart is driving towards the cake (rather than away from it when the cake is thrown forward).","Powerups page"%}
* {%translate "The cake's base speed is multiplied by a ratio based on the kart's speed, then an extra 16 speed is added. See the table below for details (30 is the speed of a medium kart using nitro in SuperTux difficulty). As a consequence, cakes thrown by karts that don't move or move slowly nearly always miss.","Powerups page"%}


| {%translate "Kart speed","Powerups page - table header"%} | {%translate "Cake speed","Powerups page - table header"%} |
| :---: | :---: |
| 0 | 16 |
| 10 | ~38 |
| 20 | ~59 |
| 30 | ~81 |
| 40 | ~103 |

{%translate "The area-of-effect around the explosion within which other karts are hit depends on kart class: light karts are vulnerable at a distance of up to 6, medium karts at a distance of up to 4.8 and heavy karts at a distance of up to 3.6.","Powerups page"%}

{%translate "Direct hits by the cake cause a standard explosion (1.5 seconds), while the duration of the explosion animation is halved for indirect hits. In both cases, much time is also lost because the target kart needs to accelerate back to a high speed.","Powerups page"%}

{%- endcapture -%}

{%- capture cake_tips -%}
{%translate "The cake's automatic aiming makes it easier to use than bowling balls, but some attention can still improve your success rate.","Powerups page"%}

{%translate "First, make sure that the kart you want to target is not currently invulnerable or protected by a shield.","Powerups page"%}

{%translate "Second, avoid using the cake when your kart is moving slowly. Due to the peculiar way the cake's speed is computed, your cake will move slowly and is unlikely to hit its target.","Powerups page"%}

{%translate "Finally, try to get closer to your target before firing. This reduces the likelihood that the other kart will change its trajectory or speed quickly enough to dodge your attack.","Powerups page"%}

{%translate "The cake can also be used as a defensive tool against basket balls by throwing it backwards when one gets close, after carefully orienting your kart so that the basket ball is right behind you. The natural upwards curve of the cake's trajectory makes it the most effective of the three powerups that can be used for this purpose.","Powerups page"%}
{%- endcapture -%}

{%- capture cake_distribution -%}
{%translate "The cake is somewhat common for karts in relatively good positions, but rare for karts in bad positions or really near first place.","Powerups page"%}
{%- endcapture -%}

{%- capture cake_desc -%}
{%translate "The cake is SuperTuxKart's most feared attacking powerup. It can be used towards the front as well as towards the back.","Powerups page"%}

{%translate "Unlike the bowling ball, the cake automatically aims at its target. It explodes upon contact, with an area-of-effect that also hit other karts too close to the explosion.","Powerups page"%}

{% start_liquid qa %}
{{ details_title }}

{{ cake_details }}
{% end_liquid %}

{% start_liquid qa %}
{{ tips_title }}

{{ cake_tips }}
{% end_liquid %}

{% start_liquid qa %}
{{ distribution_title }}

{{ cake_distribution }}
{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=cake type="odd" description=cake_desc icon="/assets/wiki/Powerup_cake_icon.png" icon_width="128px" alt_text="The cake powerup's icon" %}


{%- capture plunger_details -%}
{%translate "When used towards the front, the plunger will try to target a kart if one is close enough. Otherwise, it will attach to the first obstacle it touches.","Powerups page"%}

{%translate "The rubber-band attached by the plunger gives a maximum speed increase of 7, however it gives no engine boost and the pulling force is modest, so accelerating to the full speed it offers is unlikely during the 1 second the band stays active.","Powerups page"%}

{%translate "While the rubber band has a relatively short duration, the fade-out time of its max-speed increase lasts 3 seconds, which is quite long and contributes significantly to the time savings provided by the plunger.","Powerups page"%}

{%translate "If attached to another kart, the target kart will be slowed down by a pulling force equivalent to the one accelerating the plunger's user.","Powerups page"%}

{%translate "If attached to terrain, the rubber-band will snap if the kart gets closer than a distance of 10 to the attachment point.","Powerups page"%}

{%translate "When used towards the back, it partially covers the player's view with a large dark red texture with Tux in the middle, for a duration of 4.5 seconds. This makes it much more difficult to drive well and avoid hazards.","Powerups page"%}

{%translate "Of course, AI karts don't use a screen to drive, instead they slow down and stop avoiding hazards, with the slowdown depending on difficulty.","Powerups page"%}
{%- endcapture -%}

{%- capture plunger_tips -%}
{%translate "The most useful use of the plunger is firing it forward towards another kart, if one is close enough. The aiming is automatic, and the combination of gained speed for your kart and lost speed for the rival kart is appreciable.","Powerups page"%}

{%translate "If a kart follows you at a short to moderate distance, firing the plunger backwards to slow it down and potentially cause it to crash is also useful.","Powerups page"%}

{%translate "If neither of those is possible, the best use is to fire it on the terrain surrounding the track to get some extra speed. It is unfortunately not always obvious if the plunger will succeed attaching to terrain or not.","Powerups page"%}

{%translate "Finally, the plunger can be used to defend against basket balls by firing it backwards. This has to be done during the final approach of the basket ball and timing is important.","Powerups page"%}

{%translate "As the plunger is fired at some height above the ground, it is easier to be successful than with the bowling ball, although a bit more difficult than with the cake.","Powerups page"%}
{%- endcapture -%}

{%- capture plunger_distribution -%}
{%translate "The plunger is a fairly common powerup. It is available for most positions in the race, but as it is a weaker powerup, it is much more common in good positions than in bad positions.","Powerups page"%}

{%translate "It is also possible for karts in bad positions to get a set of 3 plungers, although that's fairly rare.","Powerups page"%}
{%- endcapture -%}

{%- capture plunger_desc -%}
{%translate "The plunger is a relatively common powerup with two very different uses.","Powerups page"%}

{%translate "Thrown forward, it tries to grab on another kart or on terrain to pull its user forward, giving it some extra speed. When used towards the back, it partially covers the screen of the targeted kart for a few seconds.","Powerups page"%}

{% start_liquid qa %}

{{ details_title }}

{{ plunger_details }}

{% end_liquid %}

{% start_liquid qa %}

{{ tips_title }}

{{ plunger_tips }}

{% end_liquid %}

{% start_liquid qa %}

{{ distribution_title }}

{{ plunger_distribution }}

{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=plunger type="even" description=plunger_desc icon="/assets/wiki/Powerup_plunger_icon.png" icon_width="128px" alt_text="The plunger powerup's icon" %}
</tr>
<tr>
{%- capture parachute_details -%}
{%translate "Since SuperTuxKart 1.0, kart engine power has to overcome a pseudo-friction that depends on speed. Parachutes considerably increase this friction, slowing down karts significantly over time and limiting their maximum speed.","Powerups page"%}

{%translate "The duration a parachute attached by the parachute powerups remains depends on the position of the receiving kart: it stays longest for the kart in first place (3.75 seconds), and is removed quicker the worse the position of the receiving kart at the time it was targeted (down to 2.5 seconds for the last targeted kart).","Powerups page"%}

{%translate "However, just as with parachutes received from bananas, it is possible for the targeted karts to drop the parachute sooner by braking sufficiently.","Powerups page"%}

{%translate "Karts that benefit from a temporary invulnerability do not receive a parachute from the parachute powerup.","Powerups page"%}
{%- endcapture -%}

{%- capture parachute_tips -%}
{%translate "Using the parachute immediately is generally fine, and you should always use it before taking a new gift box.","Powerups page"%}

{%translate "However, it can sometimes be worth delaying its use for a few seconds, for example if you notice that a rival's bomb is about to explode (the parachute would remove the bomb), that a rival's shield is about to expire, or that a rival's temporary immunity is about to end.","Powerups page"%}
{%- endcapture -%}

{%- capture parachute_distribution -%}
{%translate "The parachute is only available to karts in bad positions, being most common for the kart in last place.","Powerups page"%}

{%translate "As a global item, the parachute is fairly rare. Races with many karts and races with few karts have a similar global occurrence.","Powerups page"%}
{%- endcapture -%}

{%- capture parachute_desc -%}
{%translate "The parachute powerup attaches a parachute to all karts in front of the user. Shielded karts are protected, but lose their shield.","Powerups page"%}

{%translate "This powerful powerup's main purpose is to help reduce the gap between karts in the front and karts in the back, but counterplay is available to limit lost time.","Powerups page"%}

{% start_liquid qa %}

{{ details_title }}

{{ parachute_details }}

{% end_liquid %}

{% start_liquid qa %}

{{ tips_title }}

{{ parachute_tips }}

{% end_liquid %}

{% start_liquid qa %}

{{ distribution_title }}

{{ parachute_distribution }}

{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=parachute type="odd" description=parachute_desc icon="/assets/wiki/Powerup_parachute_icon.png" icon_width="128px" alt_text="The parachute powerup's icon" %}


{%- capture basket_ball_details -%}
{%translate "**The basket ball's speed is dynamic, depending on its distance to the first kart.** When far away it goes faster to catch up in a reasonable time, when closer it slows down to leave defensive opportunities.","Powerups page"%}

{%translate "Like the cake, it has an area-of-effect that hits other karts too close to the explosion. Please refer back to the cake section for details on the area-of-effect's size and the explosion's duration.","Powerups page"%}

{%translate "Below a distance of 50 (about the same distance as between Hacienda's starting line and the arch to enter its courtyard, taking about 2 seconds to cover without speed boosts) it goes at a speed of 9 above a medium kart's max speed without boost in the current difficulty. This is about the same speed as a medium kart with active nitro and a yellow drift boost.","Powerups page"%}

{%translate "Above a distance of 50, the basket ball speeds increases, up to a speed of 29 above a medium kart's max speed at distances of 250 or greater (a distance of 250 takes about 10 seconds to cover for a kart in SuperTux without speed boosts).","Powerups page"%}

{%translate "The basket ball normally follows the middle of the road, but when it gets close enough to its target, it will track it and follow it off-road if necessary.","Powerups page"%}

{%translate "The bouncing frequency of the basket ball increases significantly when it is closer than a distance of 50.","Powerups page"%}

{%translate "The basket ball can explode prematurely in several situations:","Powerups page"%}
* {%translate "If it touches another item with physics. This can be a moveable item from the track (such as the balls on Gran Paradiso's beach), but it can also be a bowling ball, a cake, or a plunger.","Powerups page"%}
* {%translate "If it unexpectedly collides with terrain outside of its normal bouncing. The basket ball has some logic to detect tunnels and reduce the height of its bounces if needed, but it doesn't detect all possible obstacles.","Powerups page"%}
* {%translate "If there is a long and deep gap where the basket ball cannot bounce.","Powerups page"%}

{%translate "If the basket ball happens to touch a kart different than its target during one of its bounces, it will squash it (unless it is invulnerable). The bubblegum shield doesn't protect against this squashing.","Powerups page"%}

{%translate "Like with the swatter, the flattened kart loses 50% of its speed. The duration is much shorter however, at 2 seconds instead of 5 seconds.","Powerups page"%}
{%- endcapture -%}

{%- capture basket_ball_tips -%}
{%translate "Unlike most powerups, using the basket ball well is fairly simple: fire and forget.","Powerups page"%}

{%translate "In some tracks, experienced players will want to wait having passed specific obstacles before using it: the basket ball cannot safely cross some of them (for example, STK Enterprise's jump).","Powerups page"%}

{%translate "**There are some ways to defend against the basket ball for the kart in first place**: driving fast with nitro and drifting will delay the attack, while a bubblegum shield can be used to protect against the explosion. It is also possible to make the ball explode by touching it with a powerup thrown backwards, but this is a difficult technique that requires precise timing and aiming.","Powerups page"%}
{%- endcapture -%}

{%- capture basket_ball_distribution -%}
{%translate "The basket ball is only available to karts in middle to bad positions. It becomes rarer as the parachute becomes more common.","Powerups page"%}

{%translate "As a global item, the basket ball is fairly rare. Races with many karts and races with few karts have a similar global occurrence.","Powerups page"%}
{%- endcapture -%}

{%- capture basket_ball_desc -%}
{%translate "The basket ball is SuperTuxKart's way of counterbalancing the advantage the first kart gets by not having anyone in front to take away positive items or attack it.","Powerups page"%}

{%translate "It bounces on the track towards its target at a fast speed. When it reaches the first kart, it explodes. It can also squash other karts on its path.","Powerups page"%}

{% start_liquid qa %}

{{ details_title }}

{{ basket_ball_details }}

{% end_liquid %}

{% start_liquid qa %}

{{ tips_title }}

{{ basket_ball_tips }}

{% end_liquid %}

{% start_liquid qa %}

{{ distribution_title }}

{{ basket_ball_distribution }}

{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=basket_ball type="even" description=basket_ball_desc icon="/assets/wiki/Powerup_basketball_icon.png" icon_width="128px" alt_text="The basket-ball powerup's icon" %}
</tr>
<tr>
{%- capture swapper_details -%}
{%translate "The swapper's effect activates immediately upon use, swapping items with their counterparts: gift boxes with bananas, nitro cans with ground gums. After 5 seconds, items revert to their normal form.","Powerups page"%}

{%translate "If a second swapper is used while one is still active, items switch back to their normal form.","Powerups page"%}

{%translate "Both small nitro cans and big nitro cans are transformed into ground gums, but ground gums always become big nitro cans when the swapper is activated. Ground gums swapped into nitro cans disappear after being collected, just as if someone had driven on their normal form.","Powerups page"%}
{%- endcapture -%}

{%- capture swapper_tips -%}
{%translate "**Unlike other powerups, using the swapper without thinking can be worse than not using it at all**, as you may be transforming positive items (gift boxes and nitro cans) that you were in position to take into threats you have to avoid.","Powerups page"%}

{%translate "The first main tactic with the swapper is to use it to transform negative items into positive ones. The biggest advantage is obtained when ground gums can be transformed into big nitro cans, but it is still worthwhile to transform bananas into gift boxes, as you know exactly what is happening while other karts have to deal with the chaos of the change. There are also usually much more positive items than harmful items around tracks.","Powerups page"%}

{%translate "The second main tactic is to pay attention to when a rival kart is about to take a positive item (by watching it directly or on the minimap) and to activate the swapper right when it's too late for the other kart to react. This is slightly more advanced, as it takes some attention away from driving, but it can be extremely effective when done right.","Powerups page"%}

{%translate "Finally, experienced players will often notice when another kart is holding a swapper. In high-level races, this can be used for mindgames: by holding the swapper without using it, other karts are forced to guess if they should take the positive items on their path or if they should avoid them to avoid driving on a gum or into a banana. The less predictable the timing of the swapper use, the more effective it becomes in this situation.","Powerups page"%}
{%- endcapture -%}

{%- capture swapper_distribution -%}
{%translate "The swapper is more common for karts in good positions and rarer for karts in bad positions.","Powerups page"%}

{%translate "As a global powerup that affects all karts, the swapper is fairly rare. Races with many karts and races with few karts have a similar global occurrence.","Powerups page"%}
{%- endcapture -%}

{%- capture swapper_desc -%}
{%translate "The swapper (also known as the switch) is a global powerup which lies outside traditional powerup categories.","Powerups page - DO NOT INCLUDE THE 'SWITCH' MENTION IN YOUR TRANSLATION IF NOT RELEVANT TO YOUR TARGET LANGUAGE"%}

{%translate "It temporarily swaps all gift boxes with bananas, all nitro cans with ground gums, and vice-versa: bananas become gift boxes and ground gums become nitro cans.","Powerups page"%}

{% start_liquid qa %}

{{ details_title }}

{{ swapper_details }}

{% end_liquid %}

{% start_liquid qa %}

{{ tips_title }}

{{ swapper_tips }}

{% end_liquid %}

{% start_liquid qa %}

{{ distribution_title }}

{{ swapper_distribution }}

{% end_liquid %}

{%- endcapture -%}
{% include presentation_small_with_flow name=swapper type="odd" description=swapper_desc icon="/assets/wiki/Powerup_switch_icon.png" icon_width="128px" alt_text="The swapper powerup's icon" %}
</tr>
</table>

{%- capture 1x_common_notice -%}
{%translate "The set of available powerups, as well as their effects and distribution, is identical across all SuperTuxKart 1.x versions, from SuperTuxKart 1.0 to SuperTuxKart 1.5.1, with one tiny exception: prior to SuperTuxKart 1.4, the parachute powerup removed shields from all other karts, instead of only the shields of karts in a better position than the parachute powerup's user.","Powerups page"%}
{%- endcapture -%}

{%popup_info
{{ 1x_common_notice }}
%}

{% capture distribution_chart_title %}
{%translate "Powerup distribution charts"%}
{% endcapture %}

{%minor_title {{ distribution_chart_title }}%}

{% gallery widths=100%
/assets/wiki/Powerup_SuperTuxKart_1x_powerup_distribution.png,,,The powerup distribution rates for SuperTuxKart 1.x versions - in racing mode and with 9 karts - giving a general idea of how powerup probabilities vary with kart position.
%}

{% capture past_versions_title %}
{%translate "Powerups in older SuperTuxKart versions","Powerups page - main section title"%}
{% endcapture %}

{% capture 1x_changes_title %}
{%translate "Changes brought by SuperTuxKart 1.0","Powerups page - subsection title"%}
{% endcapture %}

{% capture 0_9_3_title %}
{%translate "SuperTuxKart 0.9.3","Powerups page - subsection title"%}
{% endcapture %}

{% capture past_versions_content %}
{%minor_title {{ 1x_changes_title }}%}

{%translate "The set of available powerups did not change for SuperTuxKart 1.0, however the effect of some powerups was adjusted, and powerup distribution was massively improved.","Powerups page - past versions"%}

{%translate "Here is a list of powerup-related changes present in 1.0:","Powerups page - past versions"%}
* {%translate "Major improvements to powerup distribution with unique weights for each position in the race. A good overview is available in a [blog post covering gameplay changes for 1.0](https://blog.supertuxkart.net/2019/03/bringing-balance-to-karts.html). The main points beyond per-position weights are: different weights based on the total number of karts in a race, a reduction in the frequency of cakes, an increase in bubblegum and swatter availability, more common zippers and rarer plungers in bad positions, a complete revision of the handling of global items, and separate weights for Follow-the-Leader mode.","Powerups page - past versions"%}
* {%translate "Dynamic speeds for basket balls based on their distance to the first kart, making them much more likely to catch up to the first kart while still leaving room for defensive maneuvers.","Powerups page - past versions"%}
* {%translate "A complete rework of how the parachute penalty affects karts, with a pseudo-friction that scales with speed, as well as tweaks to some parachute-related parameters.","Powerups page - past versions"%}
* {%translate "A reduction of explosion duration, reducing the time loss caused by cakes, bowling balls and basket balls.","Powerups page - past versions"%}
* {%translate "The introduction of an early time-out making cakes and basket balls unavailable during the first 15 seconds of a race.","Powerups page - past versions"%}
* {%translate "Use of Soccer powerup weights for Egg Hunt instead of standard weights, to ensure powerup randomness doesn't matter when trying to get the best time.","Powerups page - past versions"%}

{%minor_title {{ 0_9_3_title }}%}

{%translate "SuperTuxKart 0.9.3 made the duration of parachutes attached by the parachute powerup depend on the kart position, lasting longer for karts in good positions compared to karts in bad positions.","Powerups page - past versions"%}

{%translate "The parachute powerup was also affected by other general changes to parachutes, making parachutes less penalizing for karts driving slowly and more penalizing for karts going fast, as well as making removal by braking a little more difficult.","Powerups page - past versions"%}
{%- endcapture -%}

{% start_liquid ubox %}

{{ past_versions_title }}

{{ past_versions_content }}

{% end_liquid %}
