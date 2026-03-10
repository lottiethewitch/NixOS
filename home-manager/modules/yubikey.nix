{ pkgs, ... }:

{
services.udev.packages = [ pkgs.yubikey-personalization ];

services.gpg-agent = {
  enable = true;
  enableSshSupport = true;
  enableZshIntegration = true;
};
}
