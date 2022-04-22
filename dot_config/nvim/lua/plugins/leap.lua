local plugin = {
  name   = 'ggandor/leap.nvim',
  config = function()
    require('leap').set_default_keymaps()
  end
}

return plugin
