{
  description = "FrostPhoenix's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
  
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
  
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
  
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin-bat = {
      url = "github:catppuccin/bat";
      flake = false;
    };
    catppuccin-cava = {
      url = "github:catppuccin/cava";
      flake = false;
    };
    catppuccin-starship = {
      url = "github:catppuccin/starship";
      flake = false;
    };

    spicetify-nix.url = "github:gerg-l/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

 outputs = { self, nixpkgs, home-manager, ... }@inputs:
  
  let
      inherit (self) outputs;
    in
  {
    
      nixosConfigurations = {
        acer-nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
      specialArgs = {
        inherit inputs outputs;
        };
      modules = [
        ./nixos
          home-manager.nixosModules.home-manager
        {
            home-manager = {
                users.alpa = import ./home-manager;
                extraSpecialArgs = {
                  inherit inputs outputs;
                };
                backupFileExtension = "backup";
              };
            }
          ];
        };
      };
    };
}
