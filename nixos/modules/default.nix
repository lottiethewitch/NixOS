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
        ./haxxor.nix
	./minecraft.nix
	./music.nix
	./postgres.nix
	./virt.nix
 ];
}
