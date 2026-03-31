{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.staging
    wine
    wineWowPackages.WaylandFull
    winetricks
    bottles
    cabextract
    wine-staging
  ];
}
