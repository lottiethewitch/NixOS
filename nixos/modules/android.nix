{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		androidsdk
		android-studio
		kotlin
		jdk25
	];

	pkgs.androidsdk.accept_license = true;

}
