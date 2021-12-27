local plugin = {
  name   = 'lukas-reineke/indent-blankline.nvim',
  event  = {'BufRead'},
  config = function()
    require('indent_blankline').setup {
      buftype_exclude  = {'terminal'},
      filetype_exclude = {'packer'},
      show_end_of_line = true,
      use_treesitter   = true,
    }
  end
}

return plugin
