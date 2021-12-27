local plugin =  {
  name   = 'junegunn/vim-easy-align',
  keys   = {'ga'},
  config = function()
    vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
    vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})
  end
}

return plugin
