local plugin = {
  name     = 'm-demare/hlargs.nvim',
  requires = { 'nvim-treesitter/nvim-treesitter' },
  config   = function()
    require('hlargs').setup({})
  end
}

return plugin
