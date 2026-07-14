{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
	# include whatever below :3
	vesktop
	signal-desktop
  ];

}
