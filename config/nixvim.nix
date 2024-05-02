{
  pkgs,
  lib,
  inputs,
  ...
}: let
  #  nixvim = import (builtins.fetchGit {
  #    url = "https://github.com/nix-community/nixvim";
  #    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
  # #   ref = "nixos-23.11";
  #  });
in {
  imports = [
    # For home-manager
    # nixvim.homeManagerModules.nixvim
    # # For NixOS
    # nixvim.nixosModules.nixvim
    # For nix-darwin
    # nixvim.nixDarwinModules.nixvim
    /*
    inputs.nixvim.homeManagerModules.nixvim
    */
    # inputs.nixvim.nixosModules.nixvim
  ];
  config = {
    # colorschemes.gruvbox = {
    #   enable = true;
    # };
    #
    # colorschemes.tokyonight.enable = true;
    # colorschemes.catppuccin = {
    #   enable = true;
    #   settings = {
    #     flavour = "mocha";
    #   };
    #   # transparentBackground = true;
    # };

    colorschemes.kanagawa.enable = true;

    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers

      # autoindent = true;
      # backspace = "indent,eol,start";
      # backup = true;
      cmdheight = 1;
      # colorcolumn = "80";
      /*
      completeopt = "menu,menuone,noselect";
      */
      # conceallevel = 0;
      # cursorline = true;
      # expandtab = true;
      # foldenable = true;
      # foldexpr = "nvim_treesitter#foldexpr()";
      # foldlevel = 5;
      # foldmethod = "expr";
      # ignorecase = true;
      # laststatus = 3;
      # mouse = "a";
      /*
      pumheight = 0;
      */
      shiftwidth = 2;
      # showtabline = 1;
      # signcolumn = "yes";
      # smartcase = true;
      # tabstop = 4;
      # termguicolors = true;
      # timeoutlen = 300;
      # undofile = true;
      # updatetime = 300;
      # wrap = false;
      # writebackup = true;
      clipboard = "unnamedplus";
    };


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

    plugins = {
      wtf.enable = true;
      friendly-snippets.enable = true;
      oil.enable = true;
      lazygit.enable = true;
      surround.enable = true;
      # dressing.enable = true;
      indent-blankline.enable = true;
      lualine.enable = true;
      none-ls.enable = true;
      toggleterm.enable = true;
      which-key.enable = true;
      bufferline = {
        enable = true;
        alwaysShowBufferline = false;
      };
      alpha.enable = true;
      alpha.theme = "startify";
      # noice.enable = true;
      vim-css-color.enable = true;
      # notify.enable = true;
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

      nvim-autopairs = {
        enable = true;
      };

      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          nixd.autostart = true;
          ccls.enable = true;
          jsonls.enable = true;
          clangd.enable = true;
          ccls.autostart = true;

          pyright.enable = true;
        };
      };

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

    extraPlugins = with pkgs.vimPlugins; [
      neoformat
    ];

    autoCmd = [
      {
        event = ["TermOpen"];
        pattern = ["*"];
        command = "startinsert";
      }
    ];
  };
}
