{ inputs, pkgs, ... }:

{
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
	alacritty
	fuzzel
	mako
	noctalia-shell
	niri
	xwayland-satellite
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

}
