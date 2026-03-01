{ pkgs, ... }:
{
  programs.git.config = {
    
    enable = true;
    
    settings = {
      user = {
        name  = "lottie";
        email = "lottiekxiv@proton.me";
      };
      init.defaultBranch = "main";
    };
  };
}
