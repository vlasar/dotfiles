local plugin = {
  name   = 'windwp/nvim-autopairs',
  event  = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup({})
  end
}

return plugin
