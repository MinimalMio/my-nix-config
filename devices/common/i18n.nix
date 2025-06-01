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
        fcitx5-qt
        fcitx5-chinese-addons
        fcitx5-nord
      ];
      settings = {
        inputMethod = {
          HotKey = "Control+space";
        };
        addons = {
          pinyin = {
            EnableCloudPinyin = true;
          };
        };
      };
    };
  };
}
