local plugin = {
  name     = 'lewis6991/gitsigns.nvim',
  event    = 'BufReadPre',
  config   = function()
    require('gitsigns').setup(
      {
        signs = {
          add = {
            hl     = "GitSignsAdd",
            text   = "▍",
            numhl  = "GitSignsAddNr",
            linehl = "GitSignsAddLn"
          },
          change = {
            hl     = "GitSignsChange",
            text   = "▍",
            numhl  = "GitSignsChangeNr",
            linehl = "GitSignsChangeLn",
          },
          delete = {
            hl     = "GitSignsDelete",
            text   = "▸",
            numhl  = "GitSignsDeleteNr",
            linehl = "GitSignsDeleteLn",
          },
          topdelete = {
            hl     = "GitSignsDelete",
            text   = "▾",
            numhl  = "GitSignsDeleteNr",
            linehl = "GitSignsDeleteLn",
          },
          changedelete = {
            hl     = "GitSignsChange",
            text   = "▍",
            numhl  = "GitSignsChangeNr",
            linehl = "GitSignsChangeLn",
          },
        }
      }
    )
  end
}

return plugin
