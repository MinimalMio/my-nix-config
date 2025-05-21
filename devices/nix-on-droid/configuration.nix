{ config, lib, pkgs, ... }:

{
  environment.packages = with pkgs; [
    vim procps killall diffutils findutils utillinux
    tzdata hostname man gnugrep gnupg gnused gnutar
    bzip2 gzip xz zip unzip ncurses strace
    hyfetch openssh tree clang-tools
  ];

  environment.etcBackupExtension = ".bak";

  user.shell = "${pkgs.fish}/bin/fish";

  time.timeZone = "Asia/Shanghai";

  system.stateVersion = "24.05";
}
