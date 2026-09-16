{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
	signal-desktop
	vesktop
  ];
}
