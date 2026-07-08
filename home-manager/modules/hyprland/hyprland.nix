{ pkgs, ... }:

{
  home.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.kitty.enable = true;
  wayland.windowManager.hyprland = {
	
	configType = "lua";

	enable = true;

	settings = [

	];
    
	plugins = [

	];
  };

}
