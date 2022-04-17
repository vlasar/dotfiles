local plugin = {
  name = 'srstevenson/vim-picker'
}

vim.cmd[[
  nnoremap <leader>b <cmd>PickerBuffer<CR>
  nnoremap <leader>f <cmd>PickerEdit<CR>
]]

return plugin
