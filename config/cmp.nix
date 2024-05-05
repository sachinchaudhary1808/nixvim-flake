{ pkgs, config, ... }: {

  plugins = {

    ## snippets...
    luasnip = {
      enable = true;
      extraConfig = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
    }; # not configured

    cmp-buffer = { enable = true; };

    cmp-emoji = { enable = true; };

    cmp-path = { enable = true; };

    cmp_luasnip = { enable = true; };

    cmp-cmdline.enable = true;

    cmp-nvim-lsp.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet = { expand = "luasnip"; };

        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
          { name = "cmdline"; }
          { name = "nvim_lua"; }
        ];

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" =
            "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
  };

}
