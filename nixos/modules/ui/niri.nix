{ pkgs, ... }:

{

  programs.niri.enable = true;

  services.greetd = {
	enable = true;
	settings = {
	  default_session = {
		command = "${config.programs.niri.package}/bin/niri-session";
		user = "lottie";
	  };
	};
  };

  environment.systemPackages = with pkgs; [
	alacritty
	fuzzel
	mako
	noctalia-shell
	niri
	xwayland-satellite
  ];

}
