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
            # "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<TAB>" = "cmp.mapping.confirm({ select = true })";
            "<C-e>" = "cmp.mapping.close()";
            # "<TAB>" = "cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })";
            "<Up>" = ''
              cmp.mapping(function(fallback)
                if require("cmp").visible() then
                  require("cmp").select_prev_item()
                else
                  fallback()
                end
              end, { "i", "s" })
            '';
            "<Down>" = ''
              cmp.mapping(function(fallback)
                if require("cmp").visible() then
                  require("cmp").select_next_item()
                else
                  fallback()
                end
              end, { "i", "s" })
            '';
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
