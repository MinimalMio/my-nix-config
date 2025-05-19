{ ... }:

{
  programs.nixvim = {
    globals = {
      mapleader = " ";
    };

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
        key = "<leader>eu";
        action = "kddpk";
        options = {
          desc = "Move Line Up";
        };
      }
      {
        mode = "n";
        key = "<leader>ed";
        action = "ddp";
        options = {
          desc = "Move Line Down";
        };
      }
    ];
  };
}
