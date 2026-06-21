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
	./haxxor.nix
	./minecraft.nix
	./music.nix
	./postgres.nix
	./virt.nix
 ];
}
