{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {system, ...}: let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        amaru-nixvimModule = {
          inherit system;
          module = import ./config/amaru.nix;
          extraSpecialArgs = {
            # Esto permite meter cosas externas a nixvim en tu flake
          };
        };
        miga-nixvimModule = {
          inherit system;
          module = import ./config/miga.nix;
          extraSpecialArgs = {
          };
        };

        # default-nvim = nixvim'.makeNixvimWithModule nixvimModule;
        amaru-nvim = nixvim'.makeNixvimWithModule amaru-nixvimModule;
        miga-nvim = nixvim'.makeNixvimWithModule miga-nixvimModule;

      in {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          miga = nixvimLib.check.mkTestDerivationFromNixvimModule miga-nixvimModule;
          amaru = nixvimLib.check.mkTestDerivationFromNixvimModule amaru-nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = miga-nvim;
          amaru = amaru-nvim;
        };
      };
    };
}
