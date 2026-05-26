{ nixpkgs, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		androidsdk
		android-studio
		kotlin
		jdk25
	];

	## lol ok google
        nixpkgs.android_sdk.accept_license = true;
}
