{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    winetricks
    bottles
    cabextract
    wine-staging
  ];
}
