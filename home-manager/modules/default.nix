{
  pkgs,
  lib,
  imports,
  ...
}:

{
  imports = [
    ./nixvim
    ./git.nix
    ./kitty.nix
  ];
}
