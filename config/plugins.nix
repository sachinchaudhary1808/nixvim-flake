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


    # plugins.startup.enable = true;
    nvim-colorizer.enable = true;
    leap.enable = true;
    sniprun.enable = true;
    # commentary.enable = true;
    telescope.enable = true;
    comment.enable = true;
    neo-tree.enable = true;
    twilight.enable = true;
    # nvim-autopairs for like if u open a (, " or like anything like this it will autocomplete it and make it ()"...
    nvim-autopairs = {
      enable = true;
    };

    # lsp servers..................................................................
    
    # cmp settings..............................................................

    
  };
}
