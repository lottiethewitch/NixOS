{ pkgs, ... }:

{

  programs.hyprland = {
	enable = true;
	withUWSM = true; # recommended for most users
	xwayland.enable = true; # Xwayland can be disabled.
  };

  # Hyprland cacheing - so we dont have to rebuild hyprland w dependencies all the time.
  nix.settings = {
	substituters = ["https://hyprland.cachix.org"];
	trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  xdg.portal = { 
	enable = true;
	extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
  };

  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  services.displayManager.sddm = {
	enable = true;
	wayland = {
	  enable = true;
	};
  };

  environment.systemPackages = with pkgs; [
	pyprland
	hyprpicker
	hyprcursor
	hyprlock
	hypridle
	hyprpaper
	hyprsunset
	hyprpolkitagent
  ];
}
