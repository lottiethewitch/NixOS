{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		androidsdk
		android-studio
		kotlin
		jdk25
	];

	## lol ok google
        nixpkgs.androidsdk.accept_license = true;
}
