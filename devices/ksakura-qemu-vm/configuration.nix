{ config, lib, pkgs, ... }:

{
  imports =
  [
    ./hardware-configuration.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  
  networking.hostName = "ksakura-qemu-vm";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  nix.settings.substituters = lib.mkForce [ "http://mirrors.ustc.edu.cn/nix-channels/store" ];
  nixpkgs.config.allowUnfree = true;

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  users.users.sakura = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    konsole gcc gnumake binutils vscode
  ];

  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  system.stateVersion = "24.11";
}
