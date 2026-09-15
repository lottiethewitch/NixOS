{ pkgs, ... }:
#TODO: Customize
{
  programs.noctalia = {
	enable = true;
	systemd.enable = true;
	settings = {
	  # configure options
	};
  };
}
