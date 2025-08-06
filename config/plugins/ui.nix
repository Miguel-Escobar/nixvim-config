{
  plugins = {
    gitsigns = {
      enable = true;
    };

    which-key = {
      enable = true;
    };

    todo-comments = {
      enable = true;
    };

    image = {
      enable = true;
    };

    zen-mode = {
      enable = true;
    };

    telescope = {
      enable = true;
      extensions = {
        file-browser.enable = true;
      };
    }; 

    # Puede ser algo molesto al llamar a un formatter.
    auto-save = {
      enable = true;
    };

    # Conform se encarga de formatear el código. Es un poco raro y no me gusta mucho.
    conform-nvim = {
      enable = true;
      settings = {
        # format_on_save = {
        #   lsp_fallback = "fallback";
        #   timeout_ms = 500;
        # };
        notify_on_error = true;

        formatters_by_ft = {
          sh = [
            "shellcheck"
            "shfmt"
          ];
          python = [
            "isort"
            "ruff"
          ];
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          lua = ["stylua"];
          markdown = ["prettier"];
          nix = ["alejandra"];
          yaml = ["prettier"];
        };
      };
    };

    # Treesitter le permite a neovim reconocer sintaxis, con lo que puedes decirle por ejemplo "borra esta función" o embedir un lenguaje de programación en archivo de otro tipo.
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        ignore_install = [
          "latex"
        ];
        highlight.disable = ["latex"];
      };
    };

    # Permite, en teoría, ver colores mejor en css
    colorizer.settings = { 
      enable = true;
      filetypes = [
        "css"
        "scss"
      ];
    };

    # Permite que los errores se expliciten en el mismo archivo como texto virtual.
    tiny-inline-diagnostic = {
      enable = true;
      settings = {
        multilines = {
          enabled = true;
        };
        # options = {
        #   use_icons_from_diagnostic = true;
        # };
        preset = "amongus"; # sus
        enable_on_insert = true;
        virt_texts = {
          priority = 2048;
        };
      };
    };
  };
}
