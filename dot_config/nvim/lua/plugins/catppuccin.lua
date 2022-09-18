local plugin = {
  name   = 'catppuccin/nvim',
  as     = 'catppuccin',
  -- run    = ':CatppuccinCompile',
  config = function()
    vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

    require("catppuccin").setup({
      integrations = {
        barbar = true,
        hop    = true,
      }
    })

    vim.cmd [[colorscheme catppuccin]]
    -- local catppuccin = require("catppuccin")
    --
    -- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
    --
    -- -- configure it
    -- catppuccin.setup({
    --   compile = {
    --     enabled = true,
    --     path    = vim.fn.stdpath "cache" .. "/catppuccin",
    --   },
    --   integrations = {
    --     barbar = true,
    --     hop    = true,
    --   }
    -- })
    --
    -- -- Lua
    -- vim.cmd[[colorscheme catppuccin]]
  end
}

return plugin
