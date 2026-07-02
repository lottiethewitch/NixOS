{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	niri
	waybar
	mako
	alacritty
	xwayland-satellite
  ];

}
