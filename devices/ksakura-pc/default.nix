{ ... }:

{
  imports = [
    ./configuration.nix
    ./packages.nix
    ./services.nix
    ./hardware-configuration.nix
    # ./nvidia.nix
  ];
}
