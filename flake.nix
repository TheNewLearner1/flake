{
  description = "A very basic flake";

  inputs = {
    unstablenixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
    veryoldnixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";

  };

  outputs = {nixpkgs, ...} @ inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        ({ config, pkgs, ... }: {
          nixpkgs.config.allowUnfree = true;  # Allow unfree packages
        })
      ];
    };
  };
}
