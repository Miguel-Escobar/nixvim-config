{pkgs, ...}: {
    plugins.conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
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

    plugins.auto-save = {
      enable = true;
    };

    plugins.lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        diagnostic = {
          "<leader>E" = "open_float";
          "[" = "goto_prev";
          "]" = "goto_next";
          "<leader>do" = "setloclist";
        };
        lspBuf = {
          "K" = "hover";
          "gD" = "declaration";
          "gd" = "definition";
          "gr" = "references";
          "gI" = "implementation";
          "gy" = "type_definition";
          "<leader>ca" = "code_action";
          "<leader>cr" = "rename";
          "<leader>wl" = "list_workspace_folders";
          "<leader>wr" = "remove_workspace_folder";
          "<leader>wa" = "add_workspace_folder";
        };
      };

      servers = {
        ruff.enable = true;
        pyright.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        lua_ls.enable = true;
        cssls.enable = true;
        marksman.enable = true;
        markdown_oxide.enable = true;
        nil_ls.enable = true;
        bashls.enable = true;
        yamlls.enable = true;
        nushell.enable = true;
        texlab.enable = true;
      };
    };

    plugins.trouble = {
      enable = true;
    };

    plugins.lint = {
      enable = true;
      lintersByFt = {
        nix = ["nix"];
        text = ["vale"];
        json = ["jsonlint"];
        markdown = ["vale"];
        bash = ["shellcheck"];
        yaml = ["yamlfmt"];
        python = ["ruff"];
        haskell = ["hlint"];
        lua = ["selene"];
      };
    };

    plugins.markview.enable = true;
    plugins.typst-vim.enable = true;
    plugins.vimtex = {
      enable = true;
      texlivePackage = pkgs.texlive.combined.scheme-full;
      settings = {
        view_method = "zathura";
      };
    };
    plugins.otter.enable = true;
    plugins.quarto.enable = true;
    plugins.molten.enable = true;
    plugins.image.enable = true;
    plugins.jupytext.enable = true;
    plugins.which-key.enable = true;

    dependencies = {
      tree-sitter.enable = true;
      nodejs.enable = true;
      gcc.enable = true;
    };
}
