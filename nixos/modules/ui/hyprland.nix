{ inputs, pkgs, ... }:

{
  programs = {

	hyprland = {
	  enable = true;

	  plugins = [


	  ];

	  settings = {


	  };


	};

	dconf.profiles.user.databases = [
	  {
		settings."org/gnome/desktop/interface" = {
		  gtk-theme = "Adwaita";
		  icon-theme = "Flat-Remix-Red-Dark";
		  font-name = "Noto Sans Medium 11";
		  document-font-name = "Noto Sans Medium 11";
		  monospace-font-name = "Noto Sans Mono Medium 11";
		};
	  }
	];


  };

  wayland.windowManager.hyprland = {
	enable = true;

	plugins = [
	  # inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.<plugin>

	];
  };

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
		common.default = [ "gnome" ];
	  };
	  extraPortals = [
		pkgs.xdg-desktop-portal-gtk
		pkgs.xdg-desktop-portal-gnome
	  ];
	};
  };
}
