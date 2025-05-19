{ config, lib, pkgs, ... }:

{
  environment.packages = with pkgs; [
    vim procps killall diffutils findutils utillinux
    tzdata hostname man gnugrep gnupg gnused gnutar
    bzip2 gzip xz zip unzip binutils gcc ncurses
    hyfetch fish openssh tree
  ];

  environment.etcBackupExtension = ".bak";

  user.shell = "${pkgs.fish}/bin/fish";

  system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Shanghai";
}
