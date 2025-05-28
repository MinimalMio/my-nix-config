{ config, lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command flakes" ];

  # In China mainland, sometimes we cannot connect GitHub.
  # We add hosts to solve this problem.
  # networking.hosts = {
  #   "140.82.116.4" = [ "github.com" ];
  # };
}
