# here all the plugins...................
{ pkgs, ... }: {
  # lskind for icons.................................
  plugins.lspkind = {
    enable = true;
    symbolMap = { Copilot = ""; };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
  # most of the plugins............... they are messed and i will not write any docs..........
  plugins = {
    wtf.enable = true;
    edgy.enable = true;
    # neorg.enable = true;
    lsp-format.enable = true;
    neocord.enable = true;
    tmux-navigator.enable = true;

    friendly-snippets.enable = true;
    # oil.enable = true;
    lazygit.enable = true;
    trim.enable = true;
    surround.enable = true;

    # dressing.enable = true;
    lualine.enable = true;
    # lightline.enable = true;
    which-key.enable = true;

    ## startup theme...
    alpha.enable = true;
    alpha.theme = "startify";
    alpha.iconsEnabled = true;

    # noice.enable = true;
    # dashboard = {
    #   enable = true;
    #   settings.config = {
    #     header = [
    #       ""
    #       "⡿⠋⠄⣀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣌⠻⣿⣿"
    #       "⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠹⣿"
    #       "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠹"
    #       "⣿⣿⡟⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⢿⣿⣿⣿⣮⠛⣿⣿⣿⣿⣿⣿⡆"
    #       "⡟⢻⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣣⠄⡀⢬⣭⣻⣷⡌⢿⣿⣿⣿⣿⣿"
    #       "⠃⣸⡀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠈⣆⢹⣿⣿⣿⡈⢿⣿⣿⣿⣿"
    #       "⠄⢻⡇⠄⢛⣛⣻⣿⣿⣿⣿⣿⣿⣿⣿⡆⠹⣿⣆⠸⣆⠙⠛⠛⠃⠘⣿⣿⣿⣿"
    #       "⠄⠸⣡⠄⡈⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠁⣠⣉⣤⣴⣿⣿⠿⠿⠿⡇⢸⣿⣿⣿"
    #       "⠄⡄⢿⣆⠰⡘⢿⣿⠿⢛⣉⣥⣴⣶⣿⣿⣿⣿⣻⠟⣉⣤⣶⣶⣾⣿⡄⣿⡿⢸"
    #       "⠄⢰⠸⣿⠄⢳⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⡇⢻⡇⢸"
    #       "⢷⡈⢣⣡⣶⠿⠟⠛⠓⣚⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢸⠇⠘"
    #       "⡀⣌⠄⠻⣧⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠛⠛⢿⣿⣿⣿⣿⣿⡟⠘⠄⠄"
    #       "⣷⡘⣷⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡋⢀⣠⣤⣶⣶⣾⡆⣿⣿⣿⠟⠁⠄⠄⠄⠄"
    #       "⣿⣷⡘⣿⡀⢻⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣿⣿⣿⣿⣷⡿⠟⠉⠄⠄⠄⠄⡄⢀"
    #       "⣿⣿⣷⡈⢷⡀⠙⠛⠻⠿⠿⠿⠿⠿⠷⠾⠿⠟⣛⣋⣥⣶⣄⠄⢀⣄⠹⣦⢹⣿"
    #       ""
    #     ];
    #     center = [
    #       {
    #         icon = "  ";
    #         desc = "Find File                               ";
    #         action = "Telescope find_files find_command=rg,--hidden,--files";
    #         shortcut = "SPC f f";
    #       }
    #       {
    #         icon = "  ";
    #         desc = "Recently opened                         ";
    #         action = "Telescope oldfiles";
    #         shortcut = "SPC f r";
    #       }
    #       {
    #         icon = "פּ  ";
    #         desc = "File browser                            ";
    #         action = "NvimTreeToggle";
    #         shortcut = "SPC f o";
    #       }
    #       {
    #         icon = "  ";
    #         desc = "Search for word                         ";
    #         action = "Telescope live_grep";
    #         shortcut = "SPC f g";
    #       }
    #       {
    #         icon = "  ";
    #         desc = "Help                                    ";
    #         action = "Telescope help_tags";
    #         shortcut = "SPC f h";
    #       }
    #       {
    #         icon = "  ";
    #         desc = "Commands                                ";
    #         action = "Telescope commands";
    #         shortcut = "SPC ?  ";
    #       }
    #     ];
    #   };
    # };
    vim-css-color.enable = true;
    # notify.enable = true;

    # plugins.startup.enable = true;
    nvim-colorizer.enable = true;
    leap.enable = true;
    sniprun = {
      enable = true;
      display = [ "Terminal" "VirtualText" ];
      liveModeToggle = "on";
    };
    # commentary.enable = true;
    telescope.enable = true;
    telescope.extensions.file-browser.enable = true;
    telescope.extensions.ui-select.enable = true;
    # comment.enable = true;
    # neo-tree.enable = true;
    twilight.enable = true;
    # nvim-autopairs for like if u open a (, " or like anything like this it will autocomplete it and make it ()"...
    nvim-autopairs = { enable = true; };

    # lsp servers..................................................................

    # cmp settings..............................................................

  };
}
