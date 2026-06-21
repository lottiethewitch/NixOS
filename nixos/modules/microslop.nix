{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.full
    winetricks
    wine64
    bottles
    cabextract
    mono
    microsoft-edge
    geckodriver 
    winboat
  ];
}
