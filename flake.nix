{
  description = "My NixOS/Nix-on-Droid config files.";

  inputs = {
    nixpkgs-pc.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-droid.url = "github:NixOS/nixpkgs/nixos-24.05";

    # The Nix-on-Droid part.
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs-droid";
    };

    home-manager-droid = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs-droid";
    };

    nixvim-droid = {
      url = "github:nix-community/nixvim/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs-droid";
    };

    # The Normal Devices
    home-manager-pc = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs-pc";
    };

    nixvim-pc = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs-pc";
    };
  };

  outputs = {
    self,
    nixpkgs-pc,
    nixpkgs-droid,
    nix-on-droid,
    home-manager-droid,
    nixvim-droid,
    home-manager-pc,
    nixvim-pc,
    }: {
    nixOnDroidConfigurations.default = nix-on-droid.lib.nixOnDroidConfiguration {
      pkgs = import nixpkgs-droid {
        system = "aarch64-linux";
      };
      modules = [
        ./devices/nix-on-droid
        {
          home-manager = {
            useGlobalPkgs = true;

            config = { ... }: {
              imports = [
                nixvim-droid.homeManagerModules.nixvim
                ./home-manager/components
              ];

              home.stateVersion = "24.05";
            };
          };
        }
      ];
    };

    nixosConfigurations.ksakura-qemu-vm = nixpkgs-pc.lib.nixosSystem {
      pkgs = import nixpkgs-pc {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
      modules = [
        ./devices/common
        ./devices/ksakura-qemu-vm
        ./home-manager/components/i3/packages.nix
        home-manager-pc.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;

            users.sakura = { ... }: {
              imports = [
                nixvim-pc.homeManagerModules.nixvim
                ./home-manager/components
                ./home-manager/components/i3
              ];

              home.stateVersion = "24.11";
            };
          };
        i3
      ];
    };

    nixosConfigurations.ksakura-pc = nixpkgs-pc.lib.nixosSystem {
      pkgs = import nixpkgs-pc {
        system = "x86_64-linux";
        config.allowUnfree = true;
        # config.nvidia.acceptLicense = true;
      };
      modules = [
        ./devices/common
        ./devices/ksakura-pc
        ./home-manager/components/i3/packages.nix
        home-manager-pc.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;

            users.sakura = { ... }: {
              imports = [
                nixvim-pc.homeManagerModules.nixvim
                ./home-manager/components
                ./home-manager/components/i3
              ];

              home.stateVersion = "24.11";
            };
          };
        }
      ];
    };
  };
}
