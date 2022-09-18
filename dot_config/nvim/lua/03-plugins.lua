local plugins = {
  'accelerated-jk',
  'any-jump',
  'autopairs',
  'bufdelete',
  'catppuccin',
  'cmp',
  'comment',
  'easy-align',
  'fzf-lua',
  'gitsigns',
  'hlslens',
  'hop',
  'indent-blankline',
  'lsp',
  'lualine',
  'neoscroll',
  'notify',
  'pasta',
  'splitjoin',
  'startuptime',
  'surround',
  'test',
  'treesitter',
}

require('packer').startup(
  {
    function()
      use 'antoinemadec/FixCursorHold.nvim'
      use 'wbthomason/packer.nvim'
      use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup({
          direction = 'float'
        })
      end}

      for _, p in ipairs(plugins) do
        local plugin = require('plugins/' .. p)

        use {
          plugin.name,
          after    = plugin.after,
          as       = plugin.as,
          branch   = plugin.branch,
          cmd      = plugin.cmd,
          config   = plugin.config,
          event    = plugin.event,
          ft       = plugin.ft,
          keys     = plugin.keys,
          module   = plugin.module,
          requires = plugin.requires,
          run      = plugin.run,
          wants    = plugin.wants,
        }
      end
    end,
    config = {
      display = {
        compact = true,
        open_fn = function()
          return require('packer.util').float({border = 'single'})
        end,
      }
    }
  }
)

vim.cmd[[
  nnoremap <leader>1 <cmd>PackerSync<CR>
]]
