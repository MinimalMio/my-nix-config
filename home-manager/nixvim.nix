{ ... }:

{
  programs.nixvim = {
    enable = true;
    
    opts = {
      number = true;
      tabstop = 2;
    };

    plugins = {
      lualine.enable = true;
      which-key.enable = true;
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
			nvim-autopairs.enable = true;
			rainbow-delimiters.enable = true;
			treesitter.enable = true;
			toggleterm = {
			  enable = true;
			};
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
