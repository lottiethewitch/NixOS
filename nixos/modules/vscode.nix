{ config, pkgs, ... }:
{
  programs = {
   vscode = {
     enable = true; 
     userSettings = {
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil"; 
     };
   };
 };
}
