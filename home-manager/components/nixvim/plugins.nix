{ ... }:

{
  programs.nixvim = {
    plugins = {
      # which-key.enable = true;
      nvim-autopairs.enable = true;
      # rainbow-delimiters.enable = true;
      # treesitter.enable = true;
      # lualine = {
      #   enable = true;
      #   globalstatus = true;
      # };
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
        settings = {
          direction = "float";
        };
      };
    };
  };
}
