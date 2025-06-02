return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      ---@class ParserInfo[]
      local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

      parser_config.blade = {
        install_info = {
          url = 'https://github.com/EmranMR/tree-sitter-blade',
          files = { 'src/parser.c' },
          branch = 'main',
        },
        filetype = 'blade',
      }

      vim.list_extend(opts.ensure_installed, { 'blade', 'php_only' })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        html = {
          mason = false,
          filetypes = { 'html', 'blade' },
          init_options = {
            configurationSection = { 'html', 'css', 'javascript' },
            embeddedLanguages = {
              css = true,
              javascript = true,
            },
            providerFormatter = true,
          },
        },
      },
    },
  },

  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = { 'blade-formatter' },
    },
  },

  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        blade = { 'blade-formatter' },
      },
      formatters = {
        prettier = {
          options = {
            ft_parsers = {
              json = 'json',
            },
          },
        },
      },
    },
  },

  {
    'echasnovski/mini.icons',
    opts = {
      file = {
        artisan = { glyph = '󰫐', hl = 'MiniIconsRed' },
        ['.bladeformatterrc'] = { glyph = '󰫐', hl = 'MiniIconsOrange' },
        ['.bladeformatterrc.json'] = { glyph = '󰫐', hl = 'MiniIconsOrange' },
      },
    },
  },
}
