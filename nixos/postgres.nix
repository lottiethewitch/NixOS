{ lib, pkgs, config, ... }:

{
  config.services.postgresql = {
    enable = true; 
    ensureDatabases = [ "vaderbase" ];
    authentication = pkgs.lib.mkOverride 10 ''
      #type database  DBuser  auth-method
      local all       all     trust
    '';
  };


}
