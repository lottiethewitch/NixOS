{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   devenv
   direnv
   vscode-fhs
   jetbrains.rust-rover
   jetbrains.clion
   jetbrains.idea
   jetbrains.rider
   kotlin
   jetbrains.jdk
   gpt4all-cuda
   ];
 
}
