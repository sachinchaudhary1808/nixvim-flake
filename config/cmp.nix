{ pkgs, config, ... }: {

  plugins = {

    ## snippets...
    luasnip = {
      enable = true;
      extraConfig = {
        enable_autosnippets = true;
        # store_selection_keys = "<Tab>";
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
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<CR>" =
            "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
          "<Tab>" =
            # lua
            ''
              function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                elseif require("luasnip").expand_or_jumpable() then
                  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
                else
                  fallback()
                end
              end
            '';
          "<S-Tab>" =
            # lua
            ''
              function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
                else
                  fallback()
                end
              end
            '';
        };
      };
    };
  };

}
