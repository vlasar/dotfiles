plugin = {
  name = 'rhysd/accelerated-jk',
  keys = {'j', 'k'},
  config = function()
    vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
    vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
  end
}

return plugin
