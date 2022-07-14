local plugin = {
  --name = 'akinsho/bufferline.nvim',
  --requires = {
  --  'kyazdani42/nvim-web-devicons'
  --},
  --config = function()
  --  require("bufferline").setup({})
  --end
  name = 'romgrk/barbar.nvim',
  requires = {
    'kyazdani42/nvim-web-devicons'
  }
}

--vim.cmd[[
--  " These commands will navigate through buffers in order regardless of which mode you are using
--  " e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
--  nnoremap <silent>[b :BufferLineCycleNext<CR>
--  nnoremap <silent>b] :BufferLineCyclePrev<CR>
--]]

return plugin
