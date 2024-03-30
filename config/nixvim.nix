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
    #    colorschemes.gruvbox = {
    # 	enable = true;
    # };

    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
      transparentBackground = true;
    };
    #
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
      #
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
      wrap = false;
      # writebackup = true;
      clipboard = "unnamedplus";
    };

    plugins = {
      lualine.enable = true;
      toggleterm.enable = true;
      which-key.enable = true;
      alpha.enable = true;
      alpha.theme = "startify";
      # noice.enable = true;
      vim-css-color.enable = true;
      # notify.enable = true;
      luasnip.enable = true; # not configured
      # plugins.startup.enable = true;
      nvim-colorizer.enable = true;
      leap.enable = true;
      sniprun.enable = true;
      # commentary.enable = true;
      telescope.enable = true;
      comment.enable = true;
      neo-tree.enable = true;
      twilight.enable = true;
      lsp.servers.pyright.enable = true;
      lsp.servers.nil_ls.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp.enable = true;
      treesitter.enable = true;
      lsp.enable = true;
      cmp.settings = {
        sources = [
          {name = "nvim_lsp";}
        ];
      };

      nvim-autopairs = {
        enable = true;
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
