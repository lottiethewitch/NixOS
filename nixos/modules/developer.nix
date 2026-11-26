{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    devenv
    direnv
    kotlin
    proxyman
    scilab-bin
    vscodium-fhs
    vscode-fhs
    helix
    hugo
    qtcreator
    godot
  ];

}
