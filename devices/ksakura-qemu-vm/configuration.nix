{ config, lib, pkgs, ... }:

{
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "ksakura-qemu-vm";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  nix.settings.substituters = lib.mkForce [ "http://mirrors.ustc.edu.cn/nix-channels/store" ];

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.sakura = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      tree
    ];
  };

  system.stateVersion = "24.11";
}
