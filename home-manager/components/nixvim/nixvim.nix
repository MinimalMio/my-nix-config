{ ... }:

{
  imports = [
    ./plugins.nix
    ./keyboard.nix
    ./lsp.nix
 ];

  programs.nixvim = {
    enable = true;
    
    opts = {
      number = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };

    colorschemes = {
      tokyonight.enable = true;
    };
  };
}
