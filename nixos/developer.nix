{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   devenv
   direnv
   vscode-fhs
   jetbrains.rust-rover
   jetbrains.clion
   ];
 
}
