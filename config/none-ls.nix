{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      diagnostics = {
        #mypy.enable = true;
      };
      formatting = {
        nixfmt.enable = true;
        markdownlint.enable = true;
        shellharden.enable = true;
        clang_format.enable = true;
        prettierd.enable = true;
        black.enable = true;
      };
    };
  };
}
