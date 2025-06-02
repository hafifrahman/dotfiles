local autocmd = vim.api.nvim_create_autocmd
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

autocmd('VimLeave', {
  group = augroup 'cursor_shape',
  command = 'set guicursor=a:ver1'
})
