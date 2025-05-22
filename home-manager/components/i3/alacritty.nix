{ ... }:

{
  programs.alacritty = {
    enable = true;

    settings = {
      fonts = {
        normal = {
          family = "DroidSansMono Nerd Font Mono";
          style = "Regular";
        };
        bold = {
          family = "DroidSansMono Nerd Font Mono";
          style = "Bold";
        };
        italic = {
          family = "DroidSansMono Nerd Font Mono";
          style = "Italic";
        };
      };
    };
  };
}
