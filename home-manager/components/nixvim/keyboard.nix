{ ... }:

{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<Space>e";
        action = ":NvimTreeToggle<CR>";
        options = {
          desc = "File Tree";
        };
      }
      {
        mode = "n";
        key = "<Space>t";
        action = ":ToggleTerm<CR>";
        options = {
          desc = "Terminal";
        };
      }
      {
        mode = "n";
        key = "<Space>w";
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
