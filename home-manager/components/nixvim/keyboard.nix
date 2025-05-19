{ ... }:

{
  programs.nixvim = {
    globals.mapleader = "<Space>";

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = ":NvimTreeToggle<CR>";
        options = {
          desc = "File Tree";
        };
      }
      {
        mode = "n";
        key = "<leader>t";
        action = ":ToggleTerm<CR>";
        options = {
          desc = "Terminal";
        };
      }
      {
        mode = "n";
        key = "<leader>w";
        action = ":w<CR>";
        options = {
          desc = "Save File";
        };
      }
      {
        mode = "n";
        key = "<C-+>";
        action = "kddpk";
      }
      {
        mode = "n";
        key = "<C-->";
        action = "ddp";
      }
    ];
  };
}
