plugin = {
  name = 'jose-elias-alvarez/null-ls.nvim',
  event = 'BufReadPre',
  ft = {'ruby'},
  wants = {'fidget.nvim', 'plenary.nvim'},
  requires = {
    {
      'j-hui/fidget.nvim',
      event = 'BufReadPre',
      ft    = {'ruby'}
    },
    {
      'nvim-lua/plenary.nvim',
      event = 'BufReadPre',
      ft    = {'ruby'}
    }
  },
  config = function()
    local fidget = require("fidget")
    local null_ls = require("null-ls")

    fidget.setup({})

    null_ls.setup({
      sources = {
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.diagnostics.erb_lint,
        -- null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.rubocop.with({
          method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
        }),
        null_ls.builtins.formatting.rubocop,
      }
    })

    vim.diagnostic.config(
      {
        signs            = true,
        underline        = false,
        update_in_insert = false,
        virtual_text     = false,
      }
    )

    vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInformation", { text = "", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

    vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
    vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

    local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
    }

    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or border
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
  end
}

return plugin
