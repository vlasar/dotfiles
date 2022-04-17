local plugin = {
  name = 'ibhagwan/fzf-lua',
  requires = { 'kyazdani42/nvim-web-devicons' },
  module = 'fzf-lua',
  config = function()
    require('fzf-lua').setup({
      buffers = {
        previewer  = false,
      },
      files = {
        file_icons = false,
        git_icons  = false,
        previewer  = false,
      }
    })
  end
}

vim.cmd[[
  nnoremap <leader>a <cmd>lua require('fzf-lua').lsp_code_actions()<CR>
  nnoremap <leader>g <cmd>lua require('fzf-lua').git_status()<CR>
  nnoremap <leader>r <cmd>lua require('fzf-lua').live_grep()<CR>
]]

return plugin
