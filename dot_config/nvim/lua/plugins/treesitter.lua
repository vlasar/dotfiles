local plugin = {
  name     = 'nvim-treesitter/nvim-treesitter',
  requires = {
    'RRethy/nvim-treesitter-endwise',
    'mfussenegger/nvim-ts-hint-textobject',
    'nvim-treesitter/nvim-treesitter-refactor',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'p00f/nvim-ts-rainbow',
  },
  run      = ':TSUpdate',
  config   = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {'comment', 'lua', 'ruby'},
      highlight = {
        enable = true
      },
      matchup = {
        enable = true
      },
      refactor = {
        highlight_definitions = {
          enable = true
        },
        smart_rename = {
          enable = true,
          keymaps = {
            smart_rename = "grr",
          },
        },
      },
      rainbow = {
        enable = true,
        extended_mode = true,
      },
      endwise = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    }

    vim.cmd[[
      omap     <silent>v :<C-U>lua require('tsht').nodes()<CR>
      vnoremap <silent>v :lua require('tsht').nodes()<CR>
    ]]
  end
}

return plugin
