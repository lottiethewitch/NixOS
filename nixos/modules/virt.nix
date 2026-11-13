{ pkgs, ... }:

{

  virtualisation.libvirtd = {
    enable = true;

    # Enable TPM emulation (for Windows 11)
    qemu = {
      swtpm.enable = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
    };
  };

  users.groups.libvirtd.members = [ "lottie" ];
  users.groups.kvm.members = [ "lottie" ];

  # Enable USB redirection
  virtualisation.spiceUSBRedirection.enable = true;

  environment.systemPackages = with pkgs; [
    libvirt
    virt-manager
    virt-viewer
    spice
    spice-gtk
    iptables
    dnsmasq
    qemu
    docker
    docker-compose
    phodav
    kvmtool
  ];
}
