return {
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = function()
          local config = require('kanagawa').config
          local kanagawa = require 'lualine.themes.kanagawa'
          local theme = require('kanagawa.colors').setup().theme

          local transparent_bg = config.transparent and 'none' or theme.ui.bg_m3

          kanagawa.normal.c.bg = config.transparent and 'none' or theme.ui.bg_p1
          kanagawa.inactive.a.bg = transparent_bg
          kanagawa.inactive.b.bg = transparent_bg
          kanagawa.inactive.c.bg = transparent_bg

          if vim.g.kanagawa_lualine_bold then
            for _, mode in pairs(kanagawa) do
              mode.a.gui = 'bold'
            end
          end

          return kanagawa
        end,
      },
    },
  },

  {
    'echasnovski/mini.icons',
    opts = {
      file = {
        ['lazy-lock.json'] = { glyph = '󰒲', hl = 'MiniIconsBlue' },
        ['lazyvim.json'] = { glyph = '󰒲', hl = 'MiniIconsAzure' },
      },
    },
  },

  {
    'echasnovski/mini.indentscope',
    opts = {
      draw = {
        animation = function()
          return 0
        end,
      },
    },
  },

  {
    'folke/snacks.nvim',
    opts = function(_, opts)
      opts.dashboard.preset.header = nil
    end,
  },
}
