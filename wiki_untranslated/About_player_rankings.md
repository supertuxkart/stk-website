---
title: About player rankings
toc: true
---
(This page is outdated and may not reflect latest specification)
## General principles

The player rankings system is based on a point-exchange system between players, broadly similar to ELO.

New points are introduced in the system when new players start playing, but they are then shared among a larger amount of players, keeping in check the amount of points a player can have (even if, over time, players stopping being active will lead to a slight points inflation).

Once a player has received all his base points, his points evolution depends entirely on losing or winning points to others.

You can visit [here](https://online.supertuxkart-evolution.com/rankings.php) to see current player rankings.

## Base points distribution

A player can receive a total of 4000 base points. Each new player is granted 2000 points to begin with by the ranked server. The other 2000 are distributed progressively over the course of the 45 first races [^1].

The purpose of the progressive distribution is double:
* Reducing the points inflation, so that bad players doing only a few ranked races give away much less points to other players (by having less points to distribute to begin with and by having a worse expected result).
* Make sure that, for the great majority of players, their stabilized points after some play time is higher than the points of someone having not yet done a race.

## Points exchange rules

The bulk of points evolution, and what allows it to be used as a ranking tool, happens in this step.

For points exchange purpose, each N-players race is considered as a set of 2-players races; the players being compared by pairs.

Each pair will then yield a points exchange, one winning exactly as much as the other is losing.

The final points change for a player is the sum of all the points exchanges between one player and all the others. These additions are only done once all the points change have been computed.

## Results

For each ordered pair of player, a result is computed. It depends solely on the finish time of each players. If a player A takes over 1025x as much time to finish than player B, then A's result (against B) is 0. If B takes over 1025x A's time to finish, A's result is 1. If both take the same time, the result is 0.5. The result is linearly scaled between these points [^2].

If a player quits before having crossed the finish line and seen his kart win or lose animation, his result is automatically 0.

## Expected results

The current ranking points of both players in an ordered pair are used to compute an expected result. The absolute amount of points doesn't matter, the expected results is solely dependent on the difference between both amounts [^3]. A player having more points will have a higher expected result. The expected results never reaches 0 and 1, but they can get extremely close to it. The expected results is meant to predict somewhat accurately an average score over a significant number of races; it is not meant to predict the score of a single race, as having both players finishing with a less than 2.5% time difference will not be the most common case.

The expected result is then compared to the actual result. A player having underperformed compared to his expected result will lose points, while one having overperformed will win points [^4]. This yields a scoring result.

## Race scoring importance

To obtain the final score change in an ordered player pair, the ranking importance of the race is computed.

It is the result on the multiplication several factors:
* The length of the race [^5]
* The race mode [^6]
* The highest points attained by the players and the number of races they did [^7]

The ranking importance is then multiplied with the scoring result to obtain the number of points change for the ordered player pair.

## Appendix - technical details
 
The points (and max obtained points) are stored in double-precision floating-point format. Using discrete integers would create significant rounding errors and generate unwanted threshold effects; while single-precision floats would too easily accumulate errors over time and generate unwanted points-creation/destruction (a single race can see several dozen of points exchange).

[^1]: The number of base points attributed is not constant, but degressive. It follows the formula: max(2 * (45 - number_races_played), 8)

[^2]: If A finishes before B, the formula used is min(1, 0.5 + (b_total_time - a_total_time) / (a_total_time / 20)). Otherwise, it is max(0, 0.5 - (a_total_time - b_total_time) / (b_total_time / 20)).

[^3]: The expected result for player A is 1 / (1 + 10 ^ (diff / 2000)), where diff is (rank_player_B - rank_player_A). A 2000 points advantage for player A corresponds to an expected result of ~0.909.

[^4]: The formula here is simply (result - expected_result).

[^5]: The time used for scaling is given by min(max(playerA_time, playerB_time), max_scaling_time); the maximum scaling time being 500s. If a player has quit, the maximum scaling time is automatically used, making quits more punishing than normal defeats. The scaling is then computed with max_time * sqrt(max_time) / sqrt(120) * max_points_per_second. The max points per second is 0.125 (1 full point every 8 seconds). This formula makes short races matter even less than simple proportionality, and longer races matter more; because 2 60s races are more random than a single 120s race.

[^6]: It is 1 for time-trials and 0.4 for races with item, which are more random. This may change.

[^7]:
    By default, it is 1. If a players exceeds various max attained points or ranked races done thresholds, the change is smaller.

    * 4000 points or 50 races give a 0.8 factor

    * 5000 points or 100 races a 0.7 factor

    * 6000 points or 250 races a 0.6 factor

    * 7000 points or 500 races a 0.5 factor

    * 8000 points or more gives a 0.4 factor

    The factors of both players are multiplied by each other, further stabilizing scores at the top of the rankings, while allowing a more dynamic evolution for bad or new players.
