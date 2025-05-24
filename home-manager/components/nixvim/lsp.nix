{ ... }:

{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          clangd = {
            enable = true;
          };
          cmake = {
            enable = true;
          };
        };
      };
    };
  };
}
