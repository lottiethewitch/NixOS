{ pkgs, ... }:

{
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  
  environment.systemPackages = with pkgs; [
	kdePackages.partitionmanager
	kdePackages.xdg-desktop-portal-kde
	xdg-desktop-portal-gtk
	sway
	papirus-icon-theme
	kde-rounded-corners
	nordic
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
		common.default = [ "kde" ];
	  };
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
    };
  };
}
