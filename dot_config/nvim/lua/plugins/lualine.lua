local plugin = {
  name   = 'nvim-lualine/lualine.nvim',
  event  = 'VimEnter',
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = '',
        section_separators = {left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {
          {
            'filename',
            file_status     = true,
            path            = 1,
            shorting_target = 40
          }
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    }
  end
}

return plugin
