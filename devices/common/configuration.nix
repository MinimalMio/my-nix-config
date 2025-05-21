{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command flakes" ];

  environment.systemPackages = with pkgs; [
    vim wget git fish strace binutils gcc gnumake
  ];
}
