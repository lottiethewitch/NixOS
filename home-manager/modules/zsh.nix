{ pkgs, ... }:
{

  home.packages = [
	pkgs.zsh-powerlevel10k
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
	  {name = "powerlevel10k";src = pkgs.zsh-powerlevel10k;file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";}
	];
	
	
	envExtra = ''
	  export PATH=$PATH:/$HOME/bin:/$HOME/.config/emacs/bin

	  '';

  
  };
 
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };
}
