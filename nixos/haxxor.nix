{ pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
	sherlock
  ];
}
