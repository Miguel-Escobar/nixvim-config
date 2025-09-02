{pkgs, ...}: {
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
        view_method = "zathura"; # Si tienen otro lector de pdf, debe estar explicitado acá.
      };
    };
    plugins.otter.enable = true;
    plugins.quarto.enable = true;
    plugins.molten.enable = true;
    plugins.jupytext.enable = true;
}
