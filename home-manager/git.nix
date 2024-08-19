{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "AlpaZZ";
    userEmail = "alfarizki1810@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
