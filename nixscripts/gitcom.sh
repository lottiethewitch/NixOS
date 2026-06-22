#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash
current_date=$(date +%d-%m-%Y" "%H:%M:%S);
MSG="Automated git commit message at $current_date"
CURRENT_STATE=$(hostname);

function autogitter() {
		git add -A
		git commit -m "$MSG"
};

function home() {
		home-manager switch --flake .#lottie@"$CURRENT_STATE"
};


function system() {
		sudo nixos-rebuild switch --flake .#"$CURRENT_STATE"
};


function main_func() {
		autogitter
		# Options h or s please choose one
		while getopts "h:s:" opt; do
				case $opt in
						h) home	;; 

						s) system  ;;
						\?) autogitter ;;
 			esac
		done
};

main_func


