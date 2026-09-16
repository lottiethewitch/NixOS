{
  inputs,
  ...
}:

{
  imports = [
	inputs.nixvim.homeModules.nixvim

    ./nixvim.nix
	./plugins.nix
  ];
}
