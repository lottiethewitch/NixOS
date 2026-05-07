{
  pkgs,
  lib, 
  imports,
  ...
}:

{
 imports = [
 	./art.nix
	./developer.nix
	./firefox.nix
	./gnome.nix
	./haxxor.nix
	./microslop.nix
	./nvidia.nix
	./postgres.nix
	./virt.nix
	./zsh.nix
 ];
}
