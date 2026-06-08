#!/bin/bash
## Script for setting everything up after migrating to Arch Linux!

sudo mkdir /mnt/home_backup

sudo mount /dev/SDX /mnt/home_backup #change this!

sudo pacman -S rsync

sudo rsync /mnt/home_backup/lottie/ /home/lottie/

# install Nix
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon


echo "nix.settings.allowed-users" >> /etc/nix/configuration.nix

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

# Install other packages

echo "Now loading other packages... you may need to manually install nvidia drivers.."

sudo packman -S obsidian discord steam firefox 
