{ pkgs, ... }: 

{
  services.displayManager.gdm.enable = true; 
  services.desktopManager.gnome.enable = true;

  services.gnome.core-apps.enable = false; 
  services.gnome.core-developer-tools.enable = true;
  services.gnome.games.enable = false; 
  environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs];

  environment.systemPackages = with pkgs; [
	xdg-desktop-portal-gnome
	xdg-desktop-portal-gtk
	gnomeExtensions.dash-to-panel
	gnomeExtensions.user-themes
	gnomeExtensions.open-bar
	gnomeExtensions.just-perfection
	gnomeExtensions.lockscreen-extension
	gnome-extension-manager
	adwaita-icon-theme
	graphite-gtk-theme
	graphite-cursors
  ];

  xdg = {
	portal = {
	  enable = true;
	  wlr = {
		enable = true;
		settings = {
		  screencast = {
			chooser_type = "simple";
			chooser_cmd = "${pkgs.slurp}/bin/slurp -f 'Monitor: %o' -or";
		  };
		};
	  };
	  config = {
		common.default = [ "gtk" ];
	  };
	  extraPortals = [
		pkgs.xdg-desktop-portal-gtk
		pkgs.xdg-desktop-portal-gnome
	  ];
	};
  };
}
