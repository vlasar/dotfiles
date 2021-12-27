local plugin = {
  name   = 'pechorin/any-jump.vim',
  cmd    = {'AnyJump', 'AnyJumpVisual'},
  config = function()
    vim.cmd[[
      let g:any_jump_disable_default_keybindings = 1
      let g:any_jump_search_prefered_engine = 'rg'
    ]]
  end
}

vim.cmd[[
  " Normal mode: Jump to definition under cursor
  nnoremap <leader>j :AnyJump<CR>
  " Visual mode: jump to selected text in visual mode
  xnoremap <leader>j :AnyJumpVisual<CR>
  " Normal mode: open previous opened file (after jump)
  nnoremap <leader>J :AnyJumpBack<CR>
]]

return plugin
