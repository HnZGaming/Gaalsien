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

We're here to enjoy building and surviving, a little bit of pew pew too.

Don't miss out! Join our [Discord](https://discord.gg/up8hPVXQUJ) now :)

## Wipe Info

|Last Wipe|Last Last Wipe|Last Last Last Wipe|Next Wipe|
|--:|--:|--:|--:|
|2022.3.24|2021.11.10|2021.7.30|No ETA|

# Important Notice

* You cannot build underground.
* There are block limits.
* Large ships are subject to relative max speed limit.

# Server Health

We make great effort to keep the server playable. Link below is the health monitor:

[![](https://i.imgur.com/MSRC5zX.png)](https://guest-grafana.torchmonitor.net/d/9UUUl7pGk/short-term-monitor?from=now-3h&orgId=6&refresh=1m&to=now)

# Moderation

* Type “@ryo” whenever you need immediate help.
* For feature requests, please write in `#moderation` channal.
* __No DM!__

# Notable Mods

|Name|Description|
|---|---|
|[Faction Safe Zones](https://steamcommunity.com/sharedfiles/filedetails/?id=1507368483)|Protects your base from NPC/players when you're offline.|
|[Build and Repair Systems](https://steamcommunity.com/workshop/filedetails/?id=2111073562)|Allows your grid to build & repair itself automatically.|
|[Instant Projector](https://steamcommunity.com/workshop/filedetails/?id=2096677783)|Allows you to insta-build a complete grid from components.|
|[Tiered Tech Blocks](https://steamcommunity.com/workshop/filedetails/?id=1682499145)|Makes your blocks perform better in exchange for rare components.|
|[Relative Top Speed](https://steamcommunity.com/sharedfiles/filedetails/?id=1359618037)|Allows lightweight grids to go fast, otherwise slow.|

# Nexus Sectoring

We're running 3 differnet servers which share the same world data:

1. "Lobby" server
2. "Earth/Moon" server
3. "Everything else" server

* "Earth/Moon" server is a sector that extends 1000km from the origin of the world, and "Everything else" server is everything else.
* You can move between sectors by crossing the border via a hydrogen man, grids or jump drives.
* Chat feed is shared, along with pretty much anything else.

"Lobby" server will host you during the maintenance of other servers.
New players will also land in the Lobby server first.
You can select which sector you want to spawn in from one of "spawn pads" in the lobby.

Whenever you cross the border, you'll have to load the receiving end's server.
This can take up your time depending on what you do regularly in the space.
To shorten the sector-loading time, install the [Client Plugin Loader](https://steamcommunity.com/sharedfiles/filedetails/?id=2407984968),
and activate the "seamless loading" feature.
This feature will skip a chunk of loading tasks so that you can semi-instantly move between sectors.

# PvE/NPC Behaviors

We have [MES](https://steamcommunity.com/workshop/filedetails/?id=1521905890) ships flying around.
Following is their general behavior:

* They spawn around “online” players.
* Some of them actively prey on players.
* They get stronger as your grids get larger.

Make sure to set up some auto turrets from early on!

# PvP Rules

We don't fight too often but following is the rules:

* All parties must meet and agree before open-fire.
* Failing to do so will be subject to permanent ban.

**NOTE**: Rules above do NOT apply around "Tier Forge" blocks; read on for details.

# Building Limits

You can only build certain blocks to certain numbers, so that everyone gets to play lag-free.
Note that block limit is automatically enforced by the server; the game will prevent you from placing a new block if the limit is reached.

|Category|Blocks|Per player|Per grid
|---|---|---:|---:|
|All Blocks|All Blocks|20,000|15,000|
|Subparts|Pistons + Rotors + Hinges|-|2 (\*)|
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
|Gravity|All Gravity-Generating Blocks|-|1|

* Programmable blocks will "overheat" if the computation takes 0.35ms per frame.
* Type `!blocklimit mylimit` to see your status.

(\*): Subparts have additional conditions due to the game's physics performance issue:
- for grids with 500+ blocks, up to 1x subpart block can be placed.
- for grids with 1000+ blocks, no subpart blocks can be placed.

# Auto Moderator
We have a bot that disables player grids that are consuming excess server resource.
You’ll receive a warning before the bot is about to kick in.
You can profile yourself with `!lag profile` before the punishment.

Following is some of general/typical measures to optimize your grids:

* Less conveyor ports. Tubes (2x ports) are favorable to junctions (6x ports).
* Less gas-related blocks. Vents, generators, tanks, hydrogen thrusters.
* Less production blocks on a moving grid.
* Less programmable blocks. For [Isy's Inventory Manager script](https://steamcommunity.com/sharedfiles/filedetails/?id=1216126863), set the max ms to `0.05`.

For technical details [see the GitHub page](https://github.com/HnZGaming/TorchAutoModerator).

# Relative Top Speed

Lightweight grids can go fast, otherwise slow.

||Light|Medium|Heavy|
|---|---:|---:|---:|
|Small|250m/s|175m/s|100m/s|
|Large|200m/s|150m/s|100m/s|

||Light|Medium|Heavy|
|---|---:|---:|---:|
|Small|10,000kg|300,000kg|400,000kg|
|Large|200,000kg|5,000,000kg|8,000,000kg|

# Cleanup Conditions

### Grids
Subject to automatic removal every once in a while:

|Condition|Interval|
|---|---:|
|Grids that belong to players who have been offline|15 days|
|No custom name (eg. “Small Grid 9583”)|20 minutes|
|Less than 20 blocks, not powered, no beacons|20 minutes|
|NPC ships taken over by player without the name changed|20 minutes|

### Voxel/Terrain/Ores
Resets every Friday (same seed). 

### NPC Trading Stations
Resets whenever the stores break (game bug).

# Tiered Tech Blocks (Modded)

Tiered tech blocks perform better in exchange for high-tier components.

Following is the performance gain of each tier:

|Component name|Performance gain|Block name example|
|---:|:---:|---:|
|Common Tech|2x|Enhanced Jump Drive|
|Rare Tech|4x|Proficient Jump Drive|
|Exotic Tech|8x|Elite Jump Drive|

For exact numbers, see the [official spreadsheet](https://docs.google.com/spreadsheets/d/14hLLvhF2oVzO1EIZHHXmrlTfVTLQ1cb4-OL7TH3pd_U/edit#gid=0).

### HnZ Version of Tiered Tech Mod

We've edited the original mod as following:

* Tech components will NOT show up in NPC trading stations or NPC loot.
* Instead, you can obtain "Tech Source" components from NPC loot.
* Once you obtained a "source" component, you need to find a "forge" block.
* "Forge" blocks will spawn with NPC ships/stations which you must raid first.
* You can then "forge" your "source" components into tech components.
* "Forge" blocks will destroy themselves after forging N components, otherwise invincible (\*).
* "Forge" blocks will broadcast their location.

(\*): Forge blocks cannot be destroyed by damage in order to prevent destruction during combat, but will lose the invincibility as soon as "compromised" in order to prevent player exploitations. Condition for "compromises":
- Boss grid (or the forge block itself) is "towed" by player grids via connectors, merge blocks, landing gears, etc.
- Boss grid's ownership has changed due to grinding & welding.

### Source Components

Following is a list of ways & difficulty of how you can obtain "source" components:

|Method|Difficulty|
|---|:---:|
|Raid NPC ships|△|
|Trade with other players|o|
|Vote for the server (type `!v` then `!reward`)|◎|

Following is the drop rate of "source" components from NPC loot:

|Tier|Chance|Min Amount|Max Amount|
|---|--:|--:|--:|
|Common|15%|6|40|
|Rare|7%|3|20|
|Exotic|2%|2|10|

Following is the drop rate of "source" components from vote/reward command:

|Tier|Chance|Amount|
|---|--:|--:|
|Common|100%|10|
|Rare|25%|10|
|Exotic|10%|10|

### Forge Blocks

Following is a list of NPC factions that spawn with "forge" blocks:

|Tier|Faction Tag(s)|Chance|
|---|---|--:|
|Common|INCON, IMBER, PARALLAX|10%|
|Rare|PEAVERS|50%|
|Exotic|PORKS|100%|

Following is the configuration of each "forge" block:

|Tier|Use Per Block|Seconds Per Component|Broadcast (KM)|
|---|--:|--:|--:|
|Common|90|1.6|3|
|Rare|60|3.3|3|
|Exotic|30|5.0|infinite|

### Forge Blocks & PvP

PvP is permitted around forge blocks if the intent of participation is clearly demonstrated by both/all parties:

* A: Clear intent. Players can engage in PvP without a prior notion
* B: Unclear intent. Players MUST communicate and mutually agree before engaging in PvP

|Type(A/B)|Action|
|:-:|---|
|A|Engaged with a grid that's holding a forge block (\*)|
|A|Consuming a forge block|
|A|Carrying and/or securing a forge block|
|B|Approaching a grid that's holding a forge block|
|B|Leaving the site without having engaged in the affair|

* In case you can't figure out your situation, please resort to B.
* In case a "mistake" takes place, the admin will figure it out using backup saves.
* Making "mistakes" multiple times is subject to a penalty.

(\*): In case the boss/npc spawned next to a player's base/settlement & the player's turret AI starts engaging with the grid, resort to B.

This PvP mechanism/rules are experimental and subject to change.

# Instant Grinder

Type `!grind this` on a cockpit to instantly shred the entire grid into components.

Remarks:

* Do NOT run this command on a large grid.
* Do NOT run this command on a "connected" grid.
* Loss of assets will NOT be restored by admin.

Components will be pushed to your character inventory. 
The character inventory will "expand" beyond the vanilla capacity in order to accomodate everything,
but there's a finite extent of the character inventory that leads to "nonretractable" state: about **60-70 slots**.
It is strongly recommended that you empty out the grid's inventories beforehand but ultimately there's no 100% safety with this command.

Command will attempt to process every other grid connected to the subject grid.
Make sure that your grid is neither connected to other grids via connector blocks nor merge blocks.

Loss of assets will NOT be restored by admin.

# Chat Commands

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
|`!v` then `!reward`|Vote for this server :)|

# Troubleshooting

### "Server is not responding"

1. [Join Discord](https://discord.gg/jAG5E7uz) and see if the server is actually running (ping @Admin if not running!)
2. [Delete shader cache](https://steamcommunity.com/app/244850/discussions/6/144513248281506789/)
3. [Make sure Steam is set to allow downloads during gameplay](https://i.imgur.com/ew5m6jP.png)
4. [Change Steam Download Region](https://i.imgur.com/mCSUqgv.png)
5. [Clear download cache](https://help.steampowered.com/en/faqs/view/6AD7-820D-8BE5-E51F)
6. [Verify Integrity of Game Files](https://i.imgur.com/rwydlBp.png)
7. [Log out of Steam using "Change Account"](https://i.imgur.com/EotNoOi.png) then completely quit Steam before logging back in

### Grids disappered

See [Cleanup Conditions](#cleanup-conditions)

### Cannot place new blocks

See [Building Limits](#building-limits)

# Misc
Any inquiries, feature requests, bug reports etc. should go to `#moderation` on [Discord](https://discord.gg/up8hPVXQUJ).
