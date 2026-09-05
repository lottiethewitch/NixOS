{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
	# include whatever below :3
	signal-desktop
	vesktop
  ];

}
