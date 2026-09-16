{ pkgs, ... }:
#TODO: Customize
{
  programs.noctalia = {
	enable = true;
	systemd.enable = true;
	settings = "./noctalia.toml";
  };
}
