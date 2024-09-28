{
  plugins.cmp = {
    enable = true;

    settings = {
      autoEnableSources = true;

      experimental = {
        ghost_text = true;
      };

      performance = {
        debounce = 60;
        fetchingTimeout = 200;
        maxViewEntries = 30;
      };

      snippet = {
        expand = "luasnip";
      };

      formatting = {
        fields = [
          "kind"
          "abbr"
          "menu"
        ];
      };

      window = {
        completion = {
          border = "solid";
        };
        documentation = {
          border = "solid";
        };
      };

      sources = [
        {
          name = "nvim_lsp";
        }
        {
          name = "buffer";
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          keywordLength = 3;
        }
        {
          name = "luasnip";
          keywordLength = 3;
        }
        {
          name = "path";
          keywordLength = 3;
        }
      ];

      mapping = {
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-e>" = "cmp.mapping.abort()";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      };
    };
  };

  plugins.cmp-nvim-lsp = {
    enable = true;
  }; # lsp

  plugins.cmp-nvim-lua = {
    enable = true;
  }; # nvim lua

  plugins.cmp-rg = {
    enable = true;
  }; # ripgrep cmp

  plugins.cmp-buffer = {
    enable = true;
  };

  plugins.cmp-path = {
    enable = true;
  }; # file system paths

  plugins.cmp_luasnip = {
    enable = true;
  }; # snippets

  plugins.cmp-cmdline = {
    enable = true;
  }; # autocomplete for cmdline

  extraConfigLua = ''
    local cmp = require'cmp'

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
      sources = {
        { name = 'buffer' }
       }
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
    })
  '';
}
