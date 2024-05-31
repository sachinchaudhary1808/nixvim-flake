{
  # Import all your configuration modules here
  imports = [
    #debugs
    ./debugs/trouble.nix

    #plugin-manager
    ./plugin-manager/lazy.nix

    #other
    ./other/hardtime.nix
    ./other/ionide.nix

    #plugins
    ./plugins/treesitter.nix
    ./plugins/plugins.nix

    #utils
    ./utils/git.nix
    ./utils/wilder.nix
    ./utils/toggleterm.nix

    #cmp
    ./cmp/cmp.nix
    ./cmp/snippets/snippets.nix

    #normal-config
    ./normal-config/options.nix
    ./normal-config/keymaps.nix

    #ui
    ./ui/indent-blankline.nix
    ./ui/fidget.nix
    ./ui/bufferline.nix

    #lsp
    ./lsp/none-ls.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
  ];

  globals.mapleader = " ";

  globals.maplocalleader = ",";
  plugins.codeium-nvim.enable = true;

}
