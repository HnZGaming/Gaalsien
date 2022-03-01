# Welcome to The HnZ Community!

Lived & Loved by Space Engineers from all over the SEA region:

<strong>
<table>
    <tr>
        <td align="center">Singapore</td>
        <td align="center">Malaysia</td>
        <td align="center">Philippines</td>
        <td align="center">Indonesia</td>
        <td align="center">Australia</td>
    </tr>
    <tr>
        <td align="center">New Zealand</td>
        <td align="center">India</td>
        <td align="center">Thailand</td>
        <td align="center">Taiwan</td>
        <td align="center">Japan</td>
    </tr>
</table>
</strong>

We're here to enjoy building and surviving with bare minimum mods.

Don't miss out! Join our [Discord](https://discord.gg/up8hPVXQUJ) now :)

## Important Notice

* You cannot build underground.
* There are block limits.
* Large ships are subject to relative max speed limit.

## Server Health

We make great effort to keep the server playable. Link below is the health monitor:

[![](https://i.imgur.com/MSRC5zX.png)](https://guest-grafana.torchmonitor.net/d/9UUUl7pGk/short-term-monitor?from=now-3h&orgId=6&refresh=1m&to=now)

## Moderation

* Type “@ryo” whenever you need immediate help.
* For feature requests, please write in `#moderation` channal.
* __No DM!__

## Notable Mods

|Name|Description|
|---|---|
|[Faction Safe Zones](https://steamcommunity.com/sharedfiles/filedetails/?id=1507368483)|Protects your base from NPC/players when you're offline.|
|[Build and Repair Systems](https://steamcommunity.com/workshop/filedetails/?id=2111073562)|A block that builds/repairs a grid automatically.|
|[Instant Projector](https://steamcommunity.com/workshop/filedetails/?id=2096677783)|Projectors get a “Build” button to insta-build a grid.|
|[Tiered Tech Blocks](https://steamcommunity.com/workshop/filedetails/?id=1682499145)|Blocks that perform better in exchange for high-tier components.|
|[Relative Top Speed](https://steamcommunity.com/sharedfiles/filedetails/?id=1359618037)|Allows lightweight grids to go fast, otherwise slow.|

## PvE/NPC Behaviors

We have [MES](https://steamcommunity.com/workshop/filedetails/?id=1521905890) ships flying around.
Following is their general behavior:

* Ships spawn around “online” players.
* Some of them actively prey on players.
* They get stronger as your grids get larger.

Make sure to set up some auto turrets from early on!

## PvP Rules

We don't fight too often but following is the rules:

* All parties must meet and agree before open-fire.
* Failing to do so will be subject to permanent ban.

**NOTE**: There's a free-style PvP area where the rules above do NOT apply.

## Building Limits

You can only build certain blocks to certain numbers, so that we all get to play lag-free.

|Category|Blocks|Per player|Per grid
|---|---|---:|---:|
|All Blocks|All Blocks|100,000|50,000|
|Subparts|Pistons + Rotors + Hinges|-|2|
|Assemblers|All Assemblers|10|-|
|Refineries|All Refineries|10|-|
|Production|Assemblers + Refineries + Generators|-|16|
|Welders|All Welders|10|10|
|Grinders|All Grinders|10|10|
|Drills|All Drills|12|12|
|BARS|All Build-And-Repair-System Blocks|1|1|
|Gas Tanks|All Gas Tanks|-|16|
|Reactors|All Reactors|-|10|
|Batteries|All Batteries|-|36|

* Programmable blocks will overheat if the computation takes 0.35ms per frame.
* Type `!blocklimit mylimit` to see your status.

## Auto Moderator
We have a bot that monitors the server health and disables player grids that are consuming excess server resource.
You’ll receive a warning with an in-game pop-up screen before the bot is about to kick in.

Type `!lag profile` to see your status.

## Relative Top Speed

Lightweight grids can go fast, otherwise slow.

||Light|Medium|Heavy|
|---|---:|---:|---:|
|Small|250m/s|175m/s|100m/s|
|Large|200m/s|150m/s|100m/s|

||Light|Medium|Heavy|
|---|---:|---:|---:|
|Small|10,000kg|300,000kg|400,000kg|
|Large|200,000kg|5,000,000kg|8,000,000kg|

## Cleanup Conditions

### Grids
Subject to automatic removal every once in a while:

|Condition|Interval|
|---|---:|
|Grids that belong to players who have been offline|15 days|
|No custom name (eg. “Small Grid 9583”)|20 minutes|
|Less than 20 blocks and not powered|20 minutes|
|NPC ships taken over by player without the name changed|20 minutes|

### Voxel/Terrain/Ores
Resets every Friday (same seed). 

### NPC Trading Stations
Resets whenever the stores break (game bug).

## Tiered Tech Blocks

Tiered tech blocks perform better in exchange for "Tech" components:

|Component name|Performance gain|Block name example|
|---:|:---:|---:|
|Common Tech|2x|Enhanced Jump Drive|
|Rare Tech|4x|Proficient Jump Drive|
|Exotic Tech|8x|Elite Jump Drive|

For exact numbers, see the [official spreadsheet](https://docs.google.com/spreadsheets/d/14hLLvhF2oVzO1EIZHHXmrlTfVTLQ1cb4-OL7TH3pd_U/edit#gid=0).

"Tech" components can be obtained as following:

|Method|Difficulty|
|---|:---:|
|Raid NPC ships|x|
|Buy at NPC trade stations|△|
|Trade with other players|o|
|Vote for the server (type `!v`)|◎|

**NOTE**: We've edited Exotic Tech's properties as following:

* Exotic Techs can only be obtained by refining *"Exo Tech Source"* components.
* Exo Tech Source components can be obtained as any other Tech components.
* The refinery block only exists in the designated PvP area.

## Chat Commands

|Command|Description|
|---|---|
|`!longhelp`|List up all the commands.|
|`!sc (keywords)`|Search commands by keywords.|
|`!motd`|Open this screen.|
|`!discord`|Join our discord.|
|`!lag profile`|See your server resource usage.|
|`!fixship`|Apply magic to a glitchy grid.|
|`!grind this`|Insta-grind a grid.|
|`!blocklimit mylimit`|List up your block limiter state. |
|`!v`|Vote for this server :)|

## Misc
Any inquiries, feature requests, bug reports etc. should go to `#moderation` on [Discord](https://discord.gg/up8hPVXQUJ).
