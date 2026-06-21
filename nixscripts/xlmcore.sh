#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash

#!/bin/sh -e

echo "-- XLM Native Auto-Installer --"
echo

if [ "$(id -u)" -eq 0 ]; then
    echo 'This script cannot be ran as the root user or with sudo. Please run it as a regular user.'
    exit 1
fi

echo "[Step: 1] Downloading XLM"
curl --fail -L https://github.com/Blooym/xlm/releases/latest/download/xlm-x86_64-unknown-linux-gnu > /home/lottie/xlm

echo "[Step: 2] Configuring XLM as a Steam Tool"
chmod +x /home/lottie/xlm
/home/lottie/xlm install-steam-tool --xlm-updater-disable --extra-launch-args="--run-as-steam-compat-tool=true" --steam-compat-path ~/.steam/root/compatibilitytools.d/

echo "[Step: 3] Cleanup XLM binary"
rm /home/lottie/xlm

echo
echo "-- Auto Installer Complete: Restart Steam and follow the guide at https://goatcorp.github.io/faq/steamdeck or https://github.com/Blooym/xlm#readme to continue! --"
