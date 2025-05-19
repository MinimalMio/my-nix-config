{
  description = "My NixOS/Nix-on-Droid config files.";

  inputs = {
    nixpkgs-2411.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-2405.url = "github:NixOS/nixpkgs/nixos-24.05";

    # The Nix-on-Droid part.
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs-2405";
    };

    home-manager-2405 = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs-2405";
    };

    nixvim-2405 = {
      url = "github:nix-community/nixvim/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs-2405";
    };

    # The Normal Devices
    home-manager-2411 = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs-2411";
    };

    nixvim-2411 = {
      url = "github:nix-community/nixvim/nixos-24.11";
      inputs.nixpkgs.follows = "nixpkgs-2411";
    };
  };

  outputs = {
    self,
    nixpkgs-2411,
    nixpkgs-2405, 
    nix-on-droid,
    home-manager-2405,
    nixvim-2405,
    home-manager-2411,
    nixvim-2411,
    }: {
    nixOnDroidConfigurations.default = nix-on-droid.lib.nixOnDroidConfiguration {
      pkgs = import nixpkgs-2405 { system = "aarch64-linux"; };
      modules = [
        ./devices/nix-on-droid/configuration.nix
        {
          home-manager = {
            useGlobalPkgs = true;
            
            config = { ... }: {
              imports = [
                nixvim-2405.homeManagerModules.nixvim
                ./home-manager/components/nixvim/nixvim.nix
                ./home-manager/nix-on-droid/default.nix
              ];

              home.stateVersion = "24.05";  
            };
          };
        }
      ];
    };

    nixosConfigurations.ksakura-qemu-vm = nixpkgs-2411.lib.nixosSystem {
      pkgs = import nixpkgs-2411 {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
      modules = [
        ./devices/common/configuration.nix
        ./devices/ksakura-qemu-vm/configuration.nix
        ./devices/ksakura-qemu-vm/hardware-configuration.nix
        home-manager-2411.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;

            users.sakura = { ... }: {
              imports = [
                nixvim-2411.homeManagerModules.nixvim
                ./home-manager/components/nixvim/nixvim.nix
                ./home-manager/ksakura-qemu-vm/default.nix
              ];

              home.stateVersion = "24.11";
            };
          };
        }
      ];
    };
  };
}
