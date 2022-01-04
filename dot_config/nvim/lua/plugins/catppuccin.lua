local plugin = {
  name   = 'catppuccin/nvim',
  as     = 'catppuccin',
  config = function()
    local catppuccin = require("catppuccin")
    local colors = require("catppuccin.api.colors").get_colors()

    catppuccin.setup({
      styles = {
        comments  = "italic",
        functions = "bold",
        keywords  = "italic",
        strings   = "NONE",
        variables = "NONE",
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = "italic",
            hints = "italic",
            warnings = "italic",
            information = "italic",
          },
          underlines = {
            errors = "underline",
            hints = "underline",
            warnings = "underline",
            information = "underline",
          },
        },
        lsp_trouble = false,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = false,
        nvimtree = {
          enabled = false,
          show_root = false,
        },
        which_key = false,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        dashboard = false,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = false,
        lightspeed = false,
        ts_rainbow = true,
        hop = true,
        cmp = true,
      }
    })
    catppuccin.remap({ ColorColumn = { bg = colors.black3 } })

    vim.cmd[[colorscheme catppuccin]]
  end
}

return plugin
