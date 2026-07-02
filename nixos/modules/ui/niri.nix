{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	alacritty
	fuzzel
	mako
	noctalia-shell
	niri
	swaybg
	swayidle
	swaylock
	waybar
	xwayland-satellite
  ];

}
