{ ... }:

{
  imports = [
    ./configuration.nix
    ./packages.nix
    ./services.nix
    ./hardware-configuration.nix
    ../common-compnents/i3.nix
    # ./nvidia.nix
  ];
}
