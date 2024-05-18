{ pkgs, ... }: {

  plugins = {
    clangd-extensions.enable = true;
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        nixd.autostart = true;
        jsonls.enable = true;
        clangd = {
          enable = true;
          autostart = true;

        };

        ruff.enable = true;
        pyright.enable = true;
        bashls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };

    };
  };

}
