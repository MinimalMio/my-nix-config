{ pkgs, ... }:

{
  # Packages for i3wm configuration.
  environment.systemPackages = with pkgs; [
    rofi alacritty ranger
  ];

  services.xserver.windowManager.i3.enable = true;
}
