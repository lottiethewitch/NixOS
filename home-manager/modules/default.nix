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
    ./yubikey.nix
    ./kitty.nix
  ];
}
