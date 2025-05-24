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
        # Fallback changes:
        # Compatible with nix-on-droid (now version 24.05)
        # it dont support settings.options.offsets .
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
