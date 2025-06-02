return {
  {
    'rebelot/kanagawa.nvim',
    opts = {
      transparent = true,
      overrides = function(colors)
        local theme = colors.theme
        local config = require('kanagawa').config

        local groups = {
          DiagnosticSignError = { bg = 'none' },
          DiagnosticSignHint = { bg = 'none' },
          DiagnosticSignInfo = { bg = 'none' },
          DiagnosticSignWarn = { bg = 'none' },
          LineNr = { bg = 'none' },
          StatusLine = { bg = theme.ui.bg_p1 },
        }

        local is_transparent = {
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },
          NormalFloat = { bg = 'none' },
          Pmenu = { bg = 'none' },
          StatusLine = { bg = 'none' },
          TabLineFill = { bg = 'none' },
          TabLineSel = { bg = 'none' },

          GitSignsAdd = { bg = 'none' },
          GitSignsChange = { bg = 'none' },
          GitSignsDelete = { bg = 'none' },
        }

        return vim.tbl_deep_extend('force', groups, config.transparent and is_transparent or {
          LineNrAbove = { fg = theme.ui.nontext, bg = theme.ui.bg_gutter },
          LineNrBelow = { fg = theme.ui.nontext, bg = theme.ui.bg_gutter },
        })
      end,
    },
  },

  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = function()
        require('kanagawa').load 'wave'
      end,
    },
  },
}
