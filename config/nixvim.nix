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
    colorschemes.gruvbox = {
		enable = true;
	};

    # colorschemes.catppuccin = {
    #   enable = true;
    #   # flavour = "mocha";
    #   transparentBackground = true; 
    # };
    #
    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers

      # autoindent = true;
      # backspace = "indent,eol,start";
      # backup = true;
      # cmdheight = 0;
      colorcolumn = "80";
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
      shiftwidth = 4;
      showtabline = 1;
      signcolumn = "yes";
      smartcase = true;
      tabstop = 4;
      termguicolors = true;
      timeoutlen = 300;
      # undofile = true;
      # updatetime = 300;
      wrap = false;
      # writebackup = true;
      clipboard = "unnamedplus";
    };

    plugins.lualine.enable = true;
    plugins.which-key.enable = true;
    plugins.alpha.enable = true;
    plugins.alpha.theme = "startify";
    # plugins.noice.enable = true;
    plugins.vim-css-color.enable = true;
    # plugins.notify.enable = true;
    plugins.luasnip.enable = true; # not configured
    # plugins.startup.enable = true;
    plugins.nvim-colorizer.enable = true;
    plugins.leap.enable = true;
    plugins.sniprun.enable = true;
    # plugins.commentary.enable = true;
    plugins.telescope.enable = true;
    plugins.comment.enable = true;
    plugins.neo-tree.enable = true;
    plugins.twilight.enable = true;
    plugins.lsp.servers.pyright.enable = true;
    plugins.lsp.servers.nil_ls.enable = true;
    plugins.cmp-nvim-lsp.enable = true;
    plugins.cmp.enable = true;
    plugins.treesitter.enable = true;
    plugins.lsp.enable = true;
    plugins.cmp.settings = {
      sources = [
        {name = "nvim_lsp";}
      ];
    };

    plugins.nvim-autopairs = {
      enable = true;
    };

    keymaps = [
      {
        action = "<cmd>Neotree toggle<CR>";
        key = "<space>n"; # this line is changed
        mode = "n";
        options = {
          desc = "Toggle Tree View.";
        };
      }
      {
        action = "<cmd>lua vim.lsp.buf.hover()<CR>";
        key = "<space>k"; # this line is changed
        mode = "n";
        options = {
          desc = "info about things";
        };
      }
      {
        action = "<cmd>term python3 %<CR>";
        key = "<F8>"; # this line is changed
        mode = ["n" "i"];
        options = {
          desc = "runs currunt python file in the terminal";
        };
      }
      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<space>f"; # this line is changed
        mode = ["n"];
        options = {
          desc = "telescope finding files";
        };
      }
      {
        action = "<cmd>Neoformat<CR>";
        key = "<space>="; # this line is changed
        mode = ["n"];
        options = {
          desc = "formatting";
        };
      }
    ];
    # ...

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
