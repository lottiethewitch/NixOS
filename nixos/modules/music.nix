{ pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
	bitwig-studio
	musescore
	rockbox-utility
	vital
	yt-dlp
  ];
}
