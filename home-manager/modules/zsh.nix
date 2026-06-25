{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

	home.sessionPath = [
	  "$HOME/bin"
	];

    shellAliases = {
      ll = "ls -l";
      edit = "sudo -e";
      sysup = "sudo nixos-rebuild switch --flake .#vader";
      homeup = "home-manager switch --flake .#lottie@vader --show-trace";
      dogit = "./home/lottie/Nix/nixscripts/gitcom.sh";
    };

    # With Zplug:
    zplug = {
      enable = true;
      plugins = [
        {name = "zsh-users/zsh-autosuggestions";} # Simple plugin installation
      ];
    };

    # With Oh-My-Zsh:
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"         # also requires `programs.git.enable = true;`
    ];
      theme = "agnoster";
    };
  };
  
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };
}
