{
  pkgs,
  lib,
  inputs,
  ...
}: let
in {
  imports = [
  ];
  # config = {

  # colorschemes..................................................................

  # colorschemes.gruvbox = {
  #   enable = true;
  # };

  # colorschemes.tokyonight.enable = true;

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
    # transparentBackground = true;
  };

  # colorschemes.kanagawa.enable = true;

  #...............................................................................

  # options to configure for neovim

  opts = {
    number = true; # Show line numbers
    relativenumber = true; # Show relative line numbers

     autoindent = true;
    # backspace = "indent,eol,start";
    # backup = true;
    cmdheight = 1;
    # colorcolumn = "80";
    /*
    completeopt = "menu,menuone,noselect";
    */
    # conceallevel = 0;
    # cursorline = true;
     expandtab = true;
    # foldenable = true;
    # foldexpr = "nvim_treesitter#foldexpr()";
    # foldlevel = 5;
    # foldmethod = "expr";
     ignorecase = true;
    # laststatus = 3;
    # mouse = "a";
    /*
    pumheight = 0;
    */
    shiftwidth = 2;
    # showtabline = 1;
    # signcolumn = "yes";
    # smartcase = true;
     tabstop = 2;
    # termguicolors = true;
    # timeoutlen = 300;
    # undofile = true;
    # updatetime = 300;
    # wrap = false;
    # writebackup = true;
    clipboard = "unnamedplus";
  };

  # extraPlugins to add that are not availble in nixvim repo... u can configure them using lua....(which  i don't do)

  extraPlugins = with pkgs.vimPlugins; [
    neoformat
  ];

  # open terminal in insert mode...( or may be i'm wrong i don't know...)

  autoCmd = [
    {
      event = ["TermOpen"];
      pattern = ["*"];
      command = "startinsert";
    }
  ];
  # };
}