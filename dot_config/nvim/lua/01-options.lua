local g = vim.g
local o = vim.opt

g.loaded_2html_plugin      = 1
g.loaded_getscript         = 1
g.loaded_getscriptPlugin   = 1
g.loaded_gzip              = 1
g.loaded_logiPat           = 1
g.loaded_matchit           = 1
g.loaded_matchparen        = 1
g.loaded_netrw             = 1
g.loaded_netrwFileHandlers = 1
g.loaded_netrwPlugin       = 1
g.loaded_netrwSettings     = 1
g.loaded_rrhelper          = 1
g.loaded_tar               = 1
g.loaded_tarPlugin         = 1
g.loaded_vimball           = 1
g.loaded_vimballPlugin     = 1
g.loaded_zip               = 1
g.loaded_zipPlugin         = 1

g.mapleader      = ' '
g.maplocalleader = ','

o.background    = 'dark'
o.backup        = false
o.completeopt   = 'menu,menuone,noselect'
o.confirm       = true
o.cursorline    = true
o.expandtab     = true
o.hlsearch      = true
o.ignorecase    = true
o.incsearch     = true
o.mouse         = 'a'
o.number        = true
o.pumblend      = 0
o.pumheight     = 10
o.scrolloff     = 5
o.shiftwidth    = 2
o.showmode      = false
o.sidescrolloff = 10
o.signcolumn    = 'auto:2'
o.smartcase     = true
o.smartindent   = true
o.splitbelow    = true
o.splitright    = true
o.swapfile      = false
o.tabstop       = 2
o.textwidth     = 80
o.updatetime    = 200

o.colorcolumn:append('+1')
o.shortmess:append('I')
