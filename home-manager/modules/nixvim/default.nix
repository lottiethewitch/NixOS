{
  pkgs,
  lib,
  imports,
  ...
}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./nixvim.nix
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true; 
    vimAlias = true;

    luaLoader.enable = true;
  };
}
