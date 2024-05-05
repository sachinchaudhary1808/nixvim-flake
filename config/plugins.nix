# here all the plugins...................
{pkgs, ...}: {
  # lskind for icons.................................
  plugins.lspkind = {
    enable = true;
    symbolMap = {
      Copilot = "";
    };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
  # most of the plugins............... they are messed and i will not write any docs..........
  plugins = {
    wtf.enable = true;
    # neorg.enable = true;
    lsp-format.enable = true;
    neocord.enable = true;

    ## none-ls
    none-ls.enable = true;
    none-ls.sources.diagnostics.mypy.enable = true;
    none-ls.enableLspFormat = true;

    friendly-snippets.enable = true;
    oil.enable = true;
    lazygit.enable = true;
    surround.enable = true;
    # dressing.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;
    toggleterm.enable = true;
    which-key.enable = true;
    bufferline = {
      enable = true;
      alwaysShowBufferline = false;
    };

    ## startup theme...
    alpha.enable = true;
    alpha.theme = "startify";
    alpha.iconsEnabled = true;

    # noice.enable = true;
    vim-css-color.enable = true;
    # notify.enable = true;

    ## snippets...
    luasnip = {
      enable = true;
      extraConfig = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
    }; # not configured

    # plugins.startup.enable = true;
    nvim-colorizer.enable = true;
    leap.enable = true;
    sniprun.enable = true;
    # commentary.enable = true;
    telescope.enable = true;
    comment.enable = true;
    neo-tree.enable = true;
    twilight.enable = true;
    treesitter.enable = true;
    # nvim-autopairs for like if u open a (, " or like anything like this it will autocomplete it and make it ()"...
    nvim-autopairs = {
      enable = true;
    };

    # lsp servers..................................................................
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        nixd.autostart = true;
        jsonls.enable = true;
        clangd.enable = true;
        ruff.enable = true;
        pyright.enable = true;
      };
    };

    # cmp settings..............................................................

    cmp-cmdline.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        snippet = {expand = "luasnip";};

        sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
          {name = "luasnip";}
          {name = "cmdline";}
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
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
  };
}
