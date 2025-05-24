{ ... }:

{
  programs.nixvim = {
    plugins = {
      lualine.enable = true;
      which-key.enable = true;
      nvim-autopairs.enable = true;
      rainbow-delimiters.enable = true;
      treesitter.enable = true;
      web-devicons.enable = true;
      bufferline = {
        enable = true;
        settings = {
          options = {
            offsets = [
              {
                filetype = "NvimTree";
                text = "File Explorer";
                highlight = "Directory";
                text_align = "left";
              }
            ];
          };
        };
      };
      nvim-tree = {
        enable = true;
      };
      toggleterm = {
        enable = true;
        settings = {
          direction = "float";
        };
      };
    };
  };
}
