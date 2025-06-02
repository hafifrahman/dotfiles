return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              files = {
                maxSize = 2000000,
              },
            },
          },
        },
      },
    },
  },

  {
    'mfussenegger/nvim-lint',
    opts = function(_, opts)
      opts.linters_by_ft.php = nil
    end,
  },
}
