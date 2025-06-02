local map = vim.keymap.set

map('n', '<C-a>', 'gg<S-V>G', { desc = 'Select All' })
map('n', '<leader>X', '<cmd>LazyExtras<cr>', { desc = 'LazyVim Extras' })
