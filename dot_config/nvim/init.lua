require('00-autocommands')
require('01-options')
require('02-mappings')
require('03-plugins')

vim.cmd[[
  let g:loaded_perl_provider   = 0
  let g:loaded_python_provider = 0
  let g:loaded_ruby_provider   = 0

  let g:python3_host_prog = '/opt/homebrew/bin/python3.9'
]]
