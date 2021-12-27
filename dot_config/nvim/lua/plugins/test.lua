plugin = {
  name  = 'vim-test/vim-test',
  event = {
    'BufNewFile,BufRead *_spec.rb',
    'BufNewFile,BufRead *.feature'
  },
  config = function()
    vim.cmd[[
      let test#strategy = "neovim"
    ]]
  end
}

vim.cmd[[
  nmap <silent> <Leader>; :TestNearest<CR>
  nmap <silent> <Leader>' :TestFile<CR>
  nmap <silent> <Leader>[ :TestLast<CR>
  nmap <silent> <Leader>] :TestVisit<CR>
]]

return plugin
