{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
	aseprite
	blender
	gimp
	inkscape
	kdePackages.wacomtablet
	krita
  ];
}
