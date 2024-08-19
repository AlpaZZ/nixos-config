{pkgs, ...}:
{
  programs = {
    firefox.enable = true;
    direnv.enable = true;
    hyprland.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };

  };
}