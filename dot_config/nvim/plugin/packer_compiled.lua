-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/vladimirsaric/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vladimirsaric/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vladimirsaric/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vladimirsaric/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/vladimirsaric/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "nvim-cmp" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["accelerated-jk"] = {
    config = { "\27LJ\2\nù\1\0\0\6\0\b\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0004\5\0\0B\0\5\1K\0\1\0\30<Plug>(accelerated_jk_gk)\6k\30<Plug>(accelerated_jk_gj)\6j\6n\20nvim_set_keymap\bapi\bvim\0" },
    keys = { { "", "j" }, { "", "k" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["any-jump.vim"] = {
    commands = { "AnyJump", "AnyJumpVisual" },
    config = { "\27LJ\2\nê\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0q      let g:any_jump_disable_default_keybindings = 1\n      let g:any_jump_search_prefered_engine = 'rg'\n    \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/any-jump.vim",
    url = "https://github.com/pechorin/any-jump.vim"
  },
  ["bufdelete.nvim"] = {
    commands = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nŒ\5\0\0\a\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0005\6\b\0=\6\t\0055\6\n\0=\6\v\5=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\rnvimtree\1\0\2\fenabled\1\14show_root\1\15native_lsp\15underlines\1\0\4\verrors\14underline\16information\14underline\rwarnings\14underline\nhints\14underline\17virtual_text\1\0\4\verrors\vitalic\16information\vitalic\rwarnings\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\18\vneogit\1\14dashboard\1\rgitsigns\2\14which_key\1\15bufferline\2\14telescope\1\14gitgutter\1\rlsp_saga\1\16lsp_trouble\1\bhop\2\bcmp\2\15treesitter\2\15ts_rainbow\2\15lightspeed\1\rmarkdown\1\vbarbar\1\tfern\1\14vim_sneak\1\vstyles\1\0\0\1\0\5\rkeywords\vitalic\rcomments\vitalic\14functions\tbold\14variables\tNONE\fstrings\tNONE\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  cmp_luasnip = {
    after_files = { "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\nd\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nfiles\1\0\0\1\0\2\14git_icons\1\15file_icons\1\nsetup\ffzf-lua\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚ñæ\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚ñ∏\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ttext\b‚ñç\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n∞\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\vpacker\20buftype_exclude\1\0\2\19use_treesitter\2\21show_end_of_line\2\1\2\0\0\rterminal\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n´\4\0\0\6\0\24\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0005\4\4\0=\4\5\0034\4\0\0=\4\6\3=\3\b\0025\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0034\4\3\0005\5\14\0>\5\1\4=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\3=\3\19\0025\3\20\0004\4\0\0=\4\v\0034\4\0\0=\4\r\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0034\4\0\0=\4\18\3=\3\21\0024\3\0\0=\3\22\0024\3\0\0=\3\23\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\0\0\rsections\14lualine_z\14lualine_y\14lualine_x\14lualine_c\1\2\3\0\rfilename\tpath\3\1\20shorting_target\3(\16file_status\2\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ∏\nright\bÓÇ∫\1\0\4\25always_divide_middle\2\25component_separators\5\ntheme\15catppuccin\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    keys = { { "", "<C-u>" }, { "", "<C-d>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nJ\2\3\t\2\1\0\14\14\0\2\0X\3\1Ä4\2\0\0009\3\0\2\14\0\3\0X\4\1Ä-\3\0\0=\3\0\2-\3\1\0\18\5\0\0\18\6\1\0\18\a\2\0G\b\3\0C\3\3\0\1¿\2¿\vborderÀ\b\1\0\6\0(\0U6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0004\4\4\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\5>\5\2\0049\5\3\0009\5\b\0059\5\a\5>\5\3\4=\4\n\3B\1\2\0016\1\v\0009\1\f\0019\1\r\0015\3\14\0B\1\2\0016\1\v\0009\1\15\0019\1\16\1'\3\17\0005\4\18\0B\1\3\0016\1\v\0009\1\15\0019\1\16\1'\3\19\0005\4\20\0B\1\3\0016\1\v\0009\1\15\0019\1\16\1'\3\21\0005\4\22\0B\1\3\0016\1\v\0009\1\15\0019\1\16\1'\3\23\0005\4\24\0B\1\3\0016\1\v\0009\1\25\1'\3\26\0B\1\2\0016\1\v\0009\1\25\1'\3\27\0B\1\2\0014\1\t\0005\2\28\0>\2\1\0015\2\29\0>\2\2\0015\2\30\0>\2\3\0015\2\31\0>\2\4\0015\2 \0>\2\5\0015\2!\0>\2\6\0015\2\"\0>\2\a\0015\2#\0>\2\b\0016\2\v\0009\2$\0029\2%\0029\2&\0026\3\v\0009\3$\0039\3%\0033\4'\0=\4&\0032\0\0ÄK\0\1\0\0\26open_floating_preview\tutil\blsp\1\3\0\0\b‚ñè\16FloatBorder\1\3\0\0\tü≠º\16FloatBorder\1\3\0\0\b‚ñÅ\16FloatBorder\1\3\0\0\tü≠ø\16FloatBorder\1\3\0\0\b‚ñï\16FloatBorder\1\3\0\0\tü≠æ\16FloatBorder\1\3\0\0\b‚ñî\16FloatBorder\1\3\0\0\tü≠Ω\16FloatBorderJautocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335>autocmd ColorScheme * highlight NormalFloat guibg=#1f2335\bcmd\1\0\2\ttext\bÔ†¥\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\bÔÑ©\vtexthl\23DiagnosticSignInfo\30DiagnosticSignInformation\1\0\2\ttext\tÔî© \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔôô \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\1\vconfig\15diagnostic\bvim\fsources\1\0\0\15formatting\frubocop\16diagnostics\rgitsigns\17code_actions\rbuiltins\nsetup\fnull-ls\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "cmp_luasnip" },
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\3¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\tjump\rjumpable\21select_prev_item\fvisible.\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\19nvim_list_bufs\bapi\bvimÛ\4\1\0\r\0*\0G6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0006\4\0\0'\6\3\0B\4\2\0029\4\5\4'\6\6\0005\a\a\0B\4\3\0019\4\b\0005\6\f\0005\a\n\0003\b\t\0=\b\v\a=\a\r\0065\a\17\0009\b\14\0009\b\15\b5\n\16\0B\b\2\2=\b\18\a9\b\14\0003\n\19\0005\v\20\0B\b\3\2=\b\21\a9\b\14\0003\n\22\0005\v\23\0B\b\3\2=\b\24\a=\a\14\0069\a\25\0009\a\26\a4\t\3\0005\n\27\0>\n\1\t5\n\28\0005\v\30\0003\f\29\0=\f\31\v=\v \n>\n\2\tB\a\2\2=\a\26\6B\4\2\0019\4!\0\18\6\4\0009\4\"\4'\a#\0009\b$\0015\n&\0005\v%\0=\v'\nB\b\2\0A\4\2\0016\4\0\0'\6(\0B\4\2\0029\4)\4B\4\1\0012\0\0ÄK\0\1\0\tload luasnip.loaders.from_vscode\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\2\0\0\nrails\truby\20filetype_extend\0\fluasnip\"nvim-autopairs.completion.cmp\bcmp\frequire\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    after = { "null-ls.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÅ\5\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0005\5\14\0=\5\15\4=\4\16\3=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\15\4=\4\23\3=\3\24\2B\0\2\0016\0\25\0009\0\26\0'\2\27\0B\0\2\1K\0\1\0Ç\1      omap     <silent>v :<C-U>lua require('tsht').nodes()<CR>\n      vnoremap <silent>v :lua require('tsht').nodes()<CR>\n    \bcmd\bvim\16textobjects\vselect\1\0\0\1\0\4\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\frainbow\1\0\2\venable\2\18extended_mode\2\rrefactor\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\fmatchup\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\4\0\0\fcomment\blua\truby\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-hint-textobject"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-ts-hint-textobject",
    url = "https://github.com/mfussenegger/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "", "gS" }, { "", "gJ" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\n|\0\0\6\0\a\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\6x\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0" },
    keys = { { "", "ga" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-pasta"] = {
    keys = { { "", "p" }, { "", "P" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/vim-pasta",
    url = "https://github.com/sickill/vim-pasta"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0,      let test#strategy = \"neovim\"\n    \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vladimirsaric/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^fzf%-lua"] = "fzf-lua",
  ["^hop"] = "hop.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÅ\5\0\0\6\0\28\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0005\5\14\0=\5\15\4=\4\16\3=\3\17\0025\3\18\0=\3\19\0025\3\22\0005\4\20\0005\5\21\0=\5\15\4=\4\23\3=\3\24\2B\0\2\0016\0\25\0009\0\26\0'\2\27\0B\0\2\1K\0\1\0Ç\1      omap     <silent>v :<C-U>lua require('tsht').nodes()<CR>\n      vnoremap <silent>v :lua require('tsht').nodes()<CR>\n    \bcmd\bvim\16textobjects\vselect\1\0\0\1\0\4\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\frainbow\1\0\2\venable\2\18extended_mode\2\rrefactor\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\fmatchup\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\4\0\0\fcomment\blua\truby\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nŒ\5\0\0\a\0\21\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0005\6\b\0=\6\t\0055\6\n\0=\6\v\5=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\3B\1\2\0016\1\18\0009\1\19\1'\3\20\0B\1\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\17integrations\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\rnvimtree\1\0\2\fenabled\1\14show_root\1\15native_lsp\15underlines\1\0\4\verrors\14underline\16information\14underline\rwarnings\14underline\nhints\14underline\17virtual_text\1\0\4\verrors\vitalic\16information\vitalic\rwarnings\vitalic\nhints\vitalic\1\0\1\fenabled\2\1\0\18\vneogit\1\14dashboard\1\rgitsigns\2\14which_key\1\15bufferline\2\14telescope\1\14gitgutter\1\rlsp_saga\1\16lsp_trouble\1\bhop\2\bcmp\2\15treesitter\2\15ts_rainbow\2\15lightspeed\1\rmarkdown\1\vbarbar\1\tfern\1\14vim_sneak\1\vstyles\1\0\0\1\0\5\rkeywords\vitalic\rcomments\vitalic\14functions\tbold\14variables\tNONE\fstrings\tNONE\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd friendly-snippets ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[au CmdUndefined Bdelete! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bdelete lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bdelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AnyJump lua require("packer.load")({'any-jump.vim'}, { cmd = "AnyJump", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined Bwipeout! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bwipeout lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bwipeout", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AnyJumpVisual lua require("packer.load")({'any-jump.vim'}, { cmd = "AnyJumpVisual", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> k <cmd>lua require("packer.load")({'accelerated-jk'}, { keys = "k", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> j <cmd>lua require("packer.load")({'accelerated-jk'}, { keys = "j", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ga <cmd>lua require("packer.load")({'vim-easy-align'}, { keys = "ga", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> p <cmd>lua require("packer.load")({'vim-pasta'}, { keys = "p", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-u>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> P <cmd>lua require("packer.load")({'vim-pasta'}, { keys = "P", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'nvim-lspconfig', 'null-ls.nvim'}, { ft = "ruby" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim', 'null-ls.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile,BufRead *.feature ++once lua require("packer.load")({'vim-test'}, { event = "BufNewFile,BufRead *.feature" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'LuaSnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile,BufRead *_spec.rb ++once lua require("packer.load")({'vim-test'}, { event = "BufNewFile,BufRead *_spec.rb" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
