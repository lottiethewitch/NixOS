#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash
current_date=$(date +%d-%m-%Y" "%H:%M:%S);
MSG="Automated git commit message at $current_date"

git add -A
git commit -m "$MSG"

# Options h or s please choose one
while getopts "h:s:" opt; do
  case $opt in
	h) home-manager switch --flake .#lottie@vader --show-trace ;;
	s) sudo nixos-rebuild switch --flake .#vader ;;
	\?) echo "Invalid option: -$OPTARG" ;;
  esac
done


