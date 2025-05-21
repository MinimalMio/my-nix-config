{ pkgs, ... }:

{
  # Packages for i3wm configuration.
  environment.systemPackages = with pkgs; [
    rofi thunar st
  ];

  services.xserver.windowManager.i3.enable = true;
}
