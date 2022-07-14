local plugin = {
  name = 'phaazon/hop.nvim',
  branch = 'v1',
  config = function()
    require'hop'.setup()
  end
}

vim.cmd[[
  nnoremap <leader>w <cmd>HopWord<CR>
]]

return plugin
