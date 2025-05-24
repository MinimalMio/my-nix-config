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
        key = "<leader>q";
        action = ":q<CR>";
        options = {
          desc = "Quit";
        };
      }
      {
        mode = "n";
        key = "<leader>bu";
        action = "kddpk";
        options = {
          desc = "Move Line Up";
        };
      }
      {
        mode = "n";
        key = "<leader>bd";
        action = "ddp";
        options = {
          desc = "Move Line Down";
        };
      }
      {
        mode = "n";
        key = "<leader>[";
        action = ":bprevious<CR>";
        options = {
          desc = "Prev Buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>]";
        action = ":bnext<CR>";
        options = {
          desc = "Next Buffer";
        };
      }
    ];
  };
}
