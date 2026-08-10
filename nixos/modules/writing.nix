{ pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
	manuskript
	libreoffice
   ];
}
