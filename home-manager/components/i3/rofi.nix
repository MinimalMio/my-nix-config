{ ... }:

{
  programs.rofi = {
    enable = true;

    extraConfig = {
      modi = "drun,filebrowser,window";
      show-icons = true;
      sort = true;
    };
  };
}
