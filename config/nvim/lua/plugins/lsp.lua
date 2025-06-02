return {
  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      local excluded = { 'phpcs' }

      opts.ensure_installed = vim.tbl_filter(function(tool)
        return not vim.tbl_contains(excluded, tool)
      end, opts.ensure_installed)
    end,
  },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        cssls = { mason = false },
        eslint = { mason = false },
        html = { mason = false },
        jsonls = { mason = false },
        tailwindcss = { mason = false },
        vtsls = { mason = false },
      },
    },
  },
}
