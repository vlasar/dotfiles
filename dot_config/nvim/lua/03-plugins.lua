local plugins = {
  'accelerated-jk',
  'any-jump',
  'autopairs',
  'bufdelete',
  'bufferline',
  'catppuccin',
  'cmp',
  'comment',
  'easy-align',
  'fzf-lua',
  'gitsigns',
  'indent-blankline',
  'leap',
  'lsp',
  'lualine',
  'neoscroll',
  'notify',
  'pasta',
  'picker',
  'splitjoin',
  'startuptime',
  'surround',
  'test',
  'treesitter',
}

require('packer').startup(
  {
    function()
      use 'kyazdani42/nvim-web-devicons'
      use 'nathom/filetype.nvim'
      use 'tpope/vim-repeat'
      use 'wbthomason/packer.nvim'

      for _, p in ipairs(plugins) do
        local plugin = require('plugins/' .. p)

        use {
          plugin.name,
          after    = plugin.after,
          as       = plugin.as,
          cmd      = plugin.cmd,
          config   = plugin.config,
          event    = plugin.event,
          ft       = plugin.ft,
          keys     = plugin.keys,
          module   = plugin.module,
          requires = plugin.requires,
          run      = plugin.run,
        }
      end
    end,
    config = {
      display = {
        open_fn = function()
          return require('packer.util').float({border = 'single'})
        end,
      }
    }
  }
)
