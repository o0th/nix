{
  plugins.lsp = {
    enable = true;

    servers = {
      nil-ls.enable = true;
      nixd.enable = true;
      zls.enable = true;
      ts-ls.enable = true;
    };

    keymaps = {
      silent = true;

      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gI = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gT = {
          action = "type_definition";
          desc = "Type Definition";
        };
        K = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
      };

      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };

    };
  };

  plugins.lspsaga = {
    enable = true;

    ui = {
      border = "rounded";
    };

    lightbulb = {
      enable = true;
      sign = false;
    };

    symbolInWinbar = {
      enable = true;
      showFile = true;
    };
  };


  plugins.lspkind = {
    enable = true;

    symbolMap = {
      Copilot = "";
    };

    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
}
