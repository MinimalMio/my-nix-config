{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command flakes" ];

  environment.systemPackages = with pkgs; [
    vim wget git
  ];
}
