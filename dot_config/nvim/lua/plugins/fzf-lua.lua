local plugin = {
  name     = 'ibhagwan/fzf-lua',
  module   = 'fzf-lua',
  wants    = {'nvim-web-devicons'},
  requires = {
    {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  },
  config   = function()
    require('fzf-lua').setup({
      winopts = {
        height = 0.25,
        row = 1,
        width = 1,
        border = 'single',
      },
      fzf_opts = {
        ['--layout'] = 'reverse-list'
      },
      files = {
        file_icons = false,
        previewer = false
      },
      grep = {
        previewer = false
      }
    })
  end
}

vim.cmd[[
  nnoremap <leader>a <cmd>lua require('fzf-lua').lsp_code_actions()<CR>
  nnoremap <leader>b <cmd>lua require('fzf-lua').buffers()<CR>
  nnoremap <leader>f <cmd>lua require('fzf-lua').files()<CR>
  nnoremap <leader>g <cmd>lua require('fzf-lua').git_status()<CR>
  nnoremap <leader>r <cmd>lua require('fzf-lua').live_grep()<CR>
]]

return plugin
