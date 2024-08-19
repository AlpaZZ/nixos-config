{
  pkgs,
  ...
}:

{
  users.users.alpa = {
    isNormalUser = true;
    description = "alpa";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
      ignoreShellProgramCheck = true;
      packages = with pkgs; [
      ];
    };
}