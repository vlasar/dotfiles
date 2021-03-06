local plugin = {
  name   = 'catppuccin/nvim',
  as     = 'catppuccin',
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      transparent_background = false,
      term_colors = false,
      styles = {
        comments = "italic",
        conditionals = "italic",
        loops = "NONE",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = false,
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
        cmp = true,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = false,
        nvimtree = {
          enabled = false,
          show_root = false,
          transparent_panel = false,
        },
        neotree = {
          enabled = false,
          show_root = false,
          transparent_panel = false,
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
        hop = false,
        notify = true,
        telekasten = false,
        symbols_outline = false,
      }
    })

    vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
    vim.cmd[[colorscheme catppuccin]]
  end
}

return plugin
