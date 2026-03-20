{ pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
   libvirt
   virt-manager
   virt-viewer
   spice
   spice-gtk
   iptables
   dnsmasq
   qemu
   kvmtool
 ];
}
