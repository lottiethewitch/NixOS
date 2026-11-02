{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
	libwacom
	libwacom-surface
  ];

}
