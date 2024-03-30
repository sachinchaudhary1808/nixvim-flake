{
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
    {
      action = "<cmd>ToggleTerm<CR>";
      key = "<space>t"; # this line is changed
      mode = ["n"];
      options = {
        desc = "open terminal";
      };
    }
  ];
}
# ...

