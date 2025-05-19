{ ... }:

{
  programs.nixvim = {
    opts.completeopt = [
      "noselect"
    ];

    plugins = {
      luasnip.enable = true;

      lspkind = {
        enable = true;
        cmp = {
          enable = true;
          menu = {
            nvim_lsp = "[LSP]";
            path = "[PATH]";
            buffer = "[BUF]";
            luasnip = "[SNIP]";
          };
        };
      };

      cmp = {
        enable = true;
        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          mapping = {
            "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })";
          };
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
            { name = "luasnip"; }
          ];
        };
      };
    };
  };
}
