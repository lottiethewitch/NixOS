{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		androidsdk
		android-studio
		kotlin
		jdk25
	];

}
