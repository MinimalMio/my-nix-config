{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim wget git fish strace binutils gcc gnumake htop lshw
    sqlite gdb cmake
  ];
}
