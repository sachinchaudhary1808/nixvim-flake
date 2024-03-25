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
    colorschemes.gruvbox.enable = true;
    #colorschemes.catppuccin = {
    #     enable = true;
    #    flavour = "mocha";
    # transparentBackground = true;
    #    };

    options = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers

      shiftwidth = 2; # Tab width should be 2
      clipboard = "unnamedplus";
    };

    plugins.lualine.enable = true;
    # plugins.startup.enable = true;
    plugins.nvim-colorizer.enable = true;
    plugins.leap.enable = true;
    plugins.sniprun.enable = true;
    # plugins.commentary.enable = true;
    plugins.telescope.enable = true;
    plugins.comment-nvim.enable = true;
    plugins.neo-tree.enable = true;
    plugins.twilight.enable = true;
    plugins.lsp.servers.pyright.enable = true;
    plugins.lsp.servers.nil_ls.enable = true;
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
