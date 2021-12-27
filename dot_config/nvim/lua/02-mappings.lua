vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', {})

vim.cmd[[
  nnoremap <Leader>d <cmd>lua vim.diagnostic.open_float(nil, {source = 'always'})<cr>
  nnoremap <Leader>m <cmd>lua vim.lsp.buf.formatting()<cr>
]]
