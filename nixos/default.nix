{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ../hardware
    ./boot
    ./hardware.nix
    ./network.nix
    ./program.nix
    ./security.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
    ./virtualization.nix
    ./services
  ];
}
