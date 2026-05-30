{
  pkgs,
  lib, 
  imports,
  ...
}:

{
 imports = [
 	./android.nix
	./art.nix
	./developer.nix
	./firefox.nix
	./gnome.nix
	./haxxor.nix
	./microslop.nix
	./music.nix
	./postgres.nix
	./virt.nix
	./zsh.nix
 ];
}
