# About this flake

## It's a fucking mess


| What | Am I |
| ---  | ---  |
| doing| doing|


## OK FOR REAL WHAT IS GOING ON HERE
Everything goes through flake.nix here - I've only brought in a couple of extra packages (nixvim, noctalia). Flake.nix also manages nix packages and home manager version.

DO NOT CHANGE THE STATE VERSION WITHIN `home.nix` or `configuration.nix` for any given machine, ok? I love you.

## What Goes Where
Most, if not all, things get installed via system configuration. I am trying to largely move away from this for smaller, more managable packages that do not require a long build process.

### home-manager
Mostly for dotfile management - I have a few packages installed here directly, but I keep it light, mostly to save myself time updating my dotfiles. I am sure there is a more efficient way of doing this, I am just unsure of how it works right now go easy on me lol. 

### nixos
These are my configuration files for both of my machines. 

Desktop: Neo
Laptop: Mettaton

Most things in modules are meant to be common, though this is frequently NOT the case, because of a few issues:
- Conflicting Packages (See `/ui` and `niri.nix` in comparison to `plasma.nix` - I am phasing one out, but intend to keep it as a backup so I do not have to write a new file just in case something goes wrong w niri).
- Moving away from older things and into newer things and I just have not cleaned it up yet. 

I eventually want to come up with a system for managing system differences and automate this process, but I do not know enough Nix to do that right now. 

