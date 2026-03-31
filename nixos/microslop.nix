{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.staging
    wineWowPackages.waylandFull
    winetricks
    wine64
    bottles
    cabextract
    mono
  ];
}
