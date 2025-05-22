{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = "Mod4";
      keybindings = lib.mkOptionDefault {
        "${modifier}+r" = "exec rofi -show drun";
      };
    };
  };
}
