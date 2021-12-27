local plugin = {
  name = 'karb94/neoscroll.nvim',
  keys = {'<C-u>', '<C-d>'},
  config = function()
    require('neoscroll').setup()
  end
}

return plugin
