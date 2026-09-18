{ pkgs, ... }:

{
  # This module is just kind of going to manage both my display manager and xdg because I want to unify them and cannot think of a better place to put them tbh!!
  theme = let
	sddm-astronaut = (pkgs.sddm-astronaut.override {
	  embeddedTheme = "japanese_aesthetic";  # or any other theme
	  themeConfig = {
		# Customize colors and settings
		HeaderTextColor = "#d5c4a1";
		Background = "../../sysui/cyberpunk-city-night-view-4k-8l.jpg";
		# ... other theme configuration options
	  };
	}).overrideAttrs (oldAttrs: {
	  # Optional: Inject custom background image
	  installPhase = oldAttrs.installPhase + ''
		chmod u+w $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/
		cp ${./relative/path/to/your-custom-background.png} \
		$out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/cyberpunk-city-night-view-4k-8l.jpg
	  '';
	});
  in {
	environment.systemPackages = [ sddm-astronaut ];

	services.displayManager.sddm = {
	  enable = true;
	  package = pkgs.kdePackages.sddm;
	  extraPackages = with pkgs; [
		kdePackages.qtmultimedia # Required for video backgrounds/audio
	  ];
	  theme = "sddm-astronaut-theme";
	};
  };
  environment.systemPackages = with pkgs; [
	xdg-desktop-portal-gtk
	xdg-desktop-portal-gnome
  ];

  services.displayManager.sddm.enable = true;

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
	  common.default = [  "gtk" "kde" ];
	};
	  extraPortals = [
		pkgs.xdg-desktop-portal-gtk
		pkgs.xdg-desktop-portal-gnome
	  ];
	};
  };
}
