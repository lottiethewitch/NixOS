{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    cheat
    wikiman # the arch wiki is SO useful
  ];

}
