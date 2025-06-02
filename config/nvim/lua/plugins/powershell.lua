return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = { 'powershell' },
    },
  },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        powershell_es = {},
      },
    },
  },
}
