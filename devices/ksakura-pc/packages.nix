{ config, lib, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.fish.enable = true;

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "sakura" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  environment.systemPackages = with pkgs; [
    vim wget git cmake qogir-theme qogir-icon-theme neovim clang-tools nekoray fastfetch
    networkmanagerapplet telegram-desktop
  ];

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  services.openssh.enable = true;
}
