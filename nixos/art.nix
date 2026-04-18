{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [ 
   krita
   kdePackages.wacomtablet
   blender
   inkscape
 ];
}
