{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [ 
   aseprite
   blender
   inkscape
   kdePackages.wacomtablet
   krita
 ];
}
