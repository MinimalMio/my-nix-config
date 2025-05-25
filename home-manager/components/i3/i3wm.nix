{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = "Mod4";
      keybindings = lib.mkOptionDefault {
        "Mod4+r" = "exec rofi -show drun";
      };
    };
    extraConfig = ''
      exec_always --no-startup-id fcitx5
      exec_always --no-startup-id nm-applet
    '';
  };
}
