{ pkgs, ... }:

{ 
   environment.systemPackages = with pkgs; [
	yt-dlp
	bitwig-studio
	vital
	];

}
