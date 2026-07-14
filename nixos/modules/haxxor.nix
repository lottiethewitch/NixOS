{ pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
	sherlock
	librewolf-bin
  ];
}
