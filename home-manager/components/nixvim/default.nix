{ ... }:

{
  imports = [
    ./plugins.nix
    ./keyboard.nix
    # ./lsp.nix
    # ./completion.nix
 ];

  programs.nixvim = {
    enable = true;

    opts = {
      number = true;
      relativenumber = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      laststatus = 3;
      expandtab = true;
      shell = "fish";
      wrap = false;
    };

    colorschemes = {
      tokyonight.enable = true;
    };
  };
}
