{
  pkgs,
  ...
}:

{
 imports = [
	./android.nix
	./art.nix
	./comms.nix
	./developer.nix
	./firefox.nix
    ./haxxor.nix
	./microslop.nix
	./minecraft.nix
	./music.nix
	./notes.nix
	./onepass.nix
	./postgres.nix
	./steam.nix
	./virt.nix
	./writing.nix
 ];

  environment.systemPackages = with pkgs; [
	kiwix
  ];
}
