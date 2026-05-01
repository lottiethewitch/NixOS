{ ... }: 
{
   imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ./gnome.nix
    ./developer.nix
    ./zsh.nix
    ./postgres.nix
    ./virt.nix
    ./microslop.nix
    ./art.nix  
   ];

} 
