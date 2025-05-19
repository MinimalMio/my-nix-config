{ ... }:

{
  programs.nixvim = {
    plugins = {
      lualine.enable = true;
      which-key.enable = true;
      nvim-autopairs.enable = true;
      rainbow-delimiters.enable = true;
      treesitter.enable = true;
      bufferline = {
        enable = true;
        offsets = [
          {
            filetype = "NvimTree";
            text = "File Explorer";
            highlight = "Directory";
            text_align = "left";
          }
        ];
      };
      nvim-tree = {
        enable = true;
      };
      toggleterm = {
        enable = true;
      };
    };
  };
}
