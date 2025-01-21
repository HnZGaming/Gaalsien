# Gaalsien

This is a sample Torch project which is [live](https://space-engineers.com/server/184135/). Also is build on top of [VSCode Torch server project](https://github.com/HnZGaming/TorchServer/tree/master).

Originally created to present a [nice MOTD page](https://github.com/HnZGaming/Gaalsien/blob/master/Instance/motd.md) for my server but I figured to capitalize this opportunity and share all the config files too as a good point of reference for fresh admins.

Owner/maintainer of this repo is one of Torch devs who generally enjoys pissing on other staffs as well as developing server health monitoring solutions like Profiler and Torch Monitor, which run on many of top servers if not all. This repo's server configuration is therefore equipped with those tools, limitation on players' activity is rather strict and the live moderation is as toxic.

Most "gotcha's" in Torch server configuration is taken care of & you should be able to serve for up to 15 people on a fair machine as-is, that said follow the steps below to further optimize the configuration per your need. 

## Notable Plugins

- Essentials auto commands (restart, cleanup, vote, etc)
- Block Limiter
- Static GPS marker
- Messsage of the day (`!motd`)
- Freezer (aka Concealment)
- Profiler
- [Auto Moderator](https://github.com/HnZGaming/TorchAutoModerator)
- [Search Command](https://github.com/HnZGaming/TorchSearchCommand)

## Important Notice

- This server may be running some "experimental redistribution" of mods that will crash the server if not replaced with the original mod.
- There might (will) be plugins that you won't be able to find in the Torch plugin repo as they have been obsolete (or I haven't published them yet). Please let me know if you run into (practical) issues due to missing plugins.
- Some files may be gitignored due to security reasons.
- You might need to download each plugin zip listed in `Torch.cfg` from torchapi.com/plugins
- Otherwise let me know if things aren't working out of the box.
- Feel free to fork/clone/download and edit this project so that you can jump-start on your server's configuration.
- Suggest any improvements to receive virtual kisses and hugs.

## Further Optimization

Following is the list of mods that you may consider removing from the game:

- MES and NPC mods -- active source of mini-freeze.
- Offline SafeZone -- generates SafeZones that accumulate in number and cause constant sim drop.

Following is the list of game/mod/plugin configurations that you can further optimize:

- Voxel cleanup condition and procedure.
- Block Limiter configuration.
- AutoModerator configuration.

## Disclaimer

- I won't be held responsible for any issues you may encounter running a copy of this project.
