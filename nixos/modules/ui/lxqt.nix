{ pkgs, ... }: 

{
  services.displayManager.lightdm.enable = true;
  services.desktopManager.lxqt.enable = true;

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
		common.default = [ "lightdm" "lxqt" ];
	  };
	  extraPortals = [
		pkgs.xdg-desktop-portal-gtk
		pkgs.xdg-desktop-portal-gnome
	  ];
	};
  };





}
