{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   neovim
   devenv
   direnv
   vscode-fhs
   jetbrains.rust-rover
   jetbrains.clion
   ];
 
}
