{ pkgs, ... }: 
{
	programs.steam = {
		enable = true;
		 localNetworkGameTransfers.openFirewall = true;    
	};

	environment.systemPackages = with pkgs; [
		steam-run
	];
}
