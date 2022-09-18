local plugin = {
  name   = 'phaazon/hop.nvim',
  branch = 'v1',
  cmd    = {'HopWord'},
  config = function()
    require'hop'.setup()
  end
}

vim.cmd[[
  nnoremap <leader>w <cmd>HopWord<CR>
]]

return plugin
