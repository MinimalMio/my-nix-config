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

    # TODO: Normal Nix devices part.
  };

  outputs = {
    self,
    nixpkgs-2411,
    nixpkgs-2405, 
    nix-on-droid,
    home-manager-2405,
    nixvim-2405,
    }: {
    nixOnDroidConfigurations.default = nix-on-droid.lib.nixOnDroidConfiguration {
      pkgs = import nixpkgs-2405 { system = "aarch64-linux"; };
      modules = [
        ./nix-on-droid.nix
        {
          home-manager = {
            useGlobalPkgs = true;
            
            config = { ... }: {
              imports = [
                nixvim-2405.homeManagerModules.nixvim
                ./home-manager/git.nix
                ./home-manager/nixvim.nix
              ];

              home.stateVersion = "24.05";  
            };
          };
        }
      ];
    };

  };
}
