{ ... }:

{
  imports = [
    ./i3wm.nix
    ./rofi.nix
    ./alacritty.nix
  ];

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "x-terminal-emulator" = "alacritty.desktop";
      };
    };
  };
}
