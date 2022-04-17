vim.cmd[[
  " Highlight on yank
  au TextYankPost * lua vim.highlight.on_yank {}

  " set all `es6` extensions to javascript
  au BufRead,BufNewFile *.{es6,es6.js} set filetype=javascript
]]
