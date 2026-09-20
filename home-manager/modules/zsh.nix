{ pkgs, ... }:
{

  home.packages = [
	pkgs.starship
  ];

  programs.zsh = {
    enable = true;
	enableCompletion = true;
	syntaxHighlighting.enable = true;
	autosuggestion.enable = true;

    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      sysup = "sudo nixos-rebuild switch --flake .#vader";
      homeup = "home-manager switch --flake .#lottie@vader --show-trace";
      dogit = "./home/lottie/Nix/nixscripts/gitcom.sh";
    };

	plugins = [
	
	];
	
	
	envExtra = ''
	  export PATH=$PATH:/$HOME/bin
	  eval "$(starship init bash)"
	  '';

  
  };

  programs.starship.enable = true;
 
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };
}
