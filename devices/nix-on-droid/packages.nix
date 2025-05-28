{ pkgs, ... }:

{
  environment.packages = with pkgs; [
    vim procps killall diffutils findutils utillinux
    tzdata hostname man gnugrep gnupg gnused gnutar
    bzip2 gzip xz zip unzip ncurses strace gcc fish
    hyfetch openssh tree clang-tools binutils gnumake
    sqlite gdb cmake zulu8 inetutils
  ];
}
