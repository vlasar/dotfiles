vim.cmd[[
  " Show cursor line only in the active window
  au InsertLeave,WinEnter * set cursorline
  au InsertEnter,WinLeave * set nocursorline

  " Highlight on yank
  au TextYankPost * lua vim.highlight.on_yank {}
]]
