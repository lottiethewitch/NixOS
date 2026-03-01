{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   neovim
   devenv
   direnv
   vscode
   jetbrains.rust-rover
   ];
 
}
