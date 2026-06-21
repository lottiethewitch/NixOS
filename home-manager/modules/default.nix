{
  pkgs,
  lib,
  imports,
  ...
}:

{
  imports = [
    ./git.nix
    ./kitty.nix
    ./nixvim
    ./zsh.nix
  ];
}
