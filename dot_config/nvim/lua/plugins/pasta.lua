local plugin = {
  name = 'hrsh7th/nvim-pasta',
  keys = {'p', 'P'},
  config = function()
    vim.keymap.set({ 'n', 'x' }, 'p', require('pasta.mappings').p)
    vim.keymap.set({ 'n', 'x' }, 'P', require('pasta.mappings').P)
  end
}

return plugin
