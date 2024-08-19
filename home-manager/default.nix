{inputs, username, host, ...}: {
  imports = [
    ./bat.nix                       # better cat command
    ./btop.nix
    ./cava.nix
    ./discord.nix
    ./fuzzel.nix
    ./git.nix
    ./gtk.nix
    ./hyprland
    ./kitty.nix
    ./swaync/swaync.nix
    ./micro.nix
    ./nvim.nix
    ./packages.nix
    ./scripts/scripts.nix
    ./spicetify.nix
    ./starship.nix
    ./swaylock.nix
    ./waybar
    ./zsh.nix
  ];
    home = {
    username = "alpa";
    homeDirectory = "/home/alpa";
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion

  };
  nixpkgs.config.allowUnfree = true;
}
