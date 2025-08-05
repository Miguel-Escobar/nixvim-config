{
  plugins = {
    gitsigns = {
      enable = true;
    };
    todo-comments = {
      enable = true;
    };
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

    telescope = {
      enable = true;
    };

    colorizer.settings = {
      enable = true;
      filetypes = [
        "css"
        "scss"
      ];
    };

    tiny-inline-diagnostic = {
      enable = true;
      settings = {
        multilines = {
          enabled = true;
        };
        options = {
          use_icons_from_diagnostic = true;
        };
        preset = "amongus";
        enable_on_insert = true;
        virt_texts = {
          priority = 2048;
        };
      };
    };

    image = {
      enable = true;
    };

    zen-mode = {
      enable = true;
    };
  };
}
