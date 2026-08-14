{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	cheat
	devenv
	direnv
	kotlin
	proxyman
	scilab-bin
	vscodium-fhs
	vscode-fhs
	helix
    hugo
	jetbrains.clion
	qtcreator
	godot
  ];

}
