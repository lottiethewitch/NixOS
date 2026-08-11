#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash

nix flake update

gitcom.sh

sudo nixos-rebuild-switch --flake .#lottie@"$HOSTNAME"
