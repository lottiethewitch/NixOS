{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   devenv
   direnv
   kotlin
   proxyman
   scilab-bin
   ];
 
}
