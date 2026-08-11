{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
	# include whatever below :3
	vesktop.override {
	  electron_40 = electron_40-bin;
	}
	signal-desktop
  ];

}
