{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.staging
    wine
    wineWowPackages.waylandFull
    winetricks
    bottles
    cabextract
    wine-staging
  ];
}
