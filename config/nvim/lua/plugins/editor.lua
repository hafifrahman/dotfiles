return {
  {
    'folke/snacks.nvim',
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 35,
              },
            },
          },
          files = {
            exclude = { 'node_modules/', 'vendor/' },
          },
        },
      },
    },
  },
}
