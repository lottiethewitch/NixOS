{ config, pkgs, ... }: 

{
   services.displayManager.gdm.enable = true; 
   services.desktopManager.gnome.enable = true;

   services.gnome.core-apps.enable = true; 
   services.gnome.core-developer-tools.enable = true;
   services.gnome.games.enable = false; 
   environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs];
}
