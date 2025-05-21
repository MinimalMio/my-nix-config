{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command flakes" ];

  environment.systemPackages = with pkgs; [
    vim wget git fish strace binutils gcc gnumake
  ];

  # In China mainland, sometimes we cannot connect GitHub.
  # We add hosts to solve this problem.
  networking.hosts = {
    "140.82.116.4" = [ "github.com" ];
  };
}
