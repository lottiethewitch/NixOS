{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    freerdp
    wineWow64Packages.full
    winetricks
    wine64
    bottles
    cabextract
    mono
    geckodriver
  ];
}
