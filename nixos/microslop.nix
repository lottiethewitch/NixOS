{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.staging
    wineWowPackages.full
    winetricks
    wine64
    bottles
    cabextract
    mono
    microsoft-edge
    geckodriver 
  ];
}
