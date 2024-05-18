{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./plugins.nix
    ./cmp.nix
    ./lsp.nix
    ./trouble.nix
    ./git.nix
    ./none-ls.nix
    ./treesitter.nix
    ./ionide.nix
    ./lazy.nix
    ./wilder.nix
  ];

  globals.mapleader = " ";

}
