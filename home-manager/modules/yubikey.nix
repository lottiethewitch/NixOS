{ pkgs, ... }:

{
services.yubikey-agent.enable = true;

services.gpg-agent = {
  enable = true;
  enableSshSupport = true;
  enableZshIntegration = true;
};
}
