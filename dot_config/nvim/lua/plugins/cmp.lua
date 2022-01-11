local plugin = {
  name = 'hrsh7th/nvim-cmp',
  requires = {
    {'L3MON4D3/LuaSnip', after = 'friendly-snippets', event = {'InsertEnter'}},
    {'hrsh7th/cmp-buffer', after = 'nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'rafamadriz/friendly-snippets'},
    {'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp'},
  },
  after = {'LuaSnip'},
  config = function()
    local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local luasnip = require('luasnip')

    local has_words_before = function()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    luasnip.filetype_extend("ruby", {"rails"})

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            latex_symbols = "[LaTeX]",
          })[entry.source.name]
          return vim_item
        end
      },
      mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      },
      sources = cmp.config.sources({
        {
          name = 'luasnip'
        },
        {
          name = 'buffer',
          option = {
            get_bufnrs = function()
              return vim.api.nvim_list_bufs()
            end
          }
        },
        {
          name = 'nvim_lsp'
        },
      }),
    })

    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))

    require('luasnip.loaders.from_vscode').load()

    -- Setup lspconfig.
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    require('lspconfig')['solargraph'].setup {
      capabilities = capabilities
    }
  end
}

return plugin
