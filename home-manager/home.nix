{ config, pkgs, ... }:
{

  imports = [
    ./modules
  ];


  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "lottie";
  home.homeDirectory = "/home/lottie";
  
  programs.zsh = {
  enable = true;

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


  home.stateVersion = "25.11"; # Please read the comment before changing.

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/lottie/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  systemd.user.startServices = "sd-switch";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;


    home.extraProfileCommands = ''
      if [[ -w $out/share/mime && -w $out/share/mime/packages && -d $out/share/mime/packages ]]; then
        XDG_DATA_DIRS=$out/share \
        PKGSYSTEM_ENABLE_FSYNC=0 \
        ${pkgs.buildPackages.shared-mime-info}/bin/update-mime-database \
          -V $out/share/mime > /dev/null
      fi

      if [[ -w $out/share/applications ]]; then
        ${pkgs.buildPackages.desktop-file-utils}/bin/update-desktop-database \
          $out/share/applications
      fi
    '';
}
