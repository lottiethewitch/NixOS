{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz;
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  users.users.lottie.isNormalUser = true;

  home-manager.users.lottie = {
    /* The home.stateVersion option does not have a default and must be set */
    home.stateVersion = "25.11";
    home.packages = [ pkgs.atool pkgs.httpie ];
    programs.bash.enable = true;
  };
}
