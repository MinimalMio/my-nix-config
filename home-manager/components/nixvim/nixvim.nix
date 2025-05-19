{ ... }:

{
  imports = [
    ./plugins.nix
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

    keymaps = [
      {
        key = "<Space>e";
        action = ":NvimTreeToggle<CR>";
      }
      {
        key = "<Space>t";
        action = ":ToggleTerm<CR>";
      }
      {
        key = "<Space>w";
        action = ":w<CR>";
      }
    ];
  };
}
