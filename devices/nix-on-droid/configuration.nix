{ config, lib, pkgs, ... }:

{
  environment.etcBackupExtension = ".bak";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  user.shell = "${pkgs.fish}/bin/fish";

  time.timeZone = "Asia/Shanghai";

  system.stateVersion = "24.05";
}
