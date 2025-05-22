{ pkgs, ... }:

{
  # Packages for i3wm configuration.
  environment.systemPackages = with pkgs; [
    rofi alacritty ranger lxappearance xfce.thunar
    pavucontrol vlc
  ];

  services.xserver.windowManager.i3.enable = true;
  programs.dconf.enable = true;
}
