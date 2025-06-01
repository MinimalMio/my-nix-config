{ config, lib, pkgs, ... }:

{
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5 = {
      # plasma6Support = true;
      # waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-chinese-addons
        fcitx5-nord
      ];
      settings = {};
    };
  };

  environment.sessionVariables = rec {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };
}
