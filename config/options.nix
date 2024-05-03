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
  # config = {
    # colorschemes.gruvbox = {
    #   enable = true;
    # };
    #
    # colorschemes.tokyonight.enable = true;
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
      };
    # transparentBackground = true;
    };

    # colorschemes.kanagawa.enable = true;

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
  # };
}
