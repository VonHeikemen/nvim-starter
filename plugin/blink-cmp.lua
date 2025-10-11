if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add({
  source = 'saghen/blink.cmp',
  depends = {'rafamadriz/friendly-snippets'},
  checkout = 'v1.7.0',
})

MiniDeps.now(function()
  -- docs: https://cmp.saghen.dev/configuration/general.html
  require('blink.cmp').setup({
    fuzzy = {
      implementation = 'prefer_rust_with_warning',
    },
    snippets = {
      preset = 'mini_snippets',
    },
    completion = {
      documentation = {
        auto_show = true,
      },
      list = {
        selection = {auto_insert = false},
      },
    },
    signature = {
      enabled = false,
    },
    sources = {
      default = {'path', 'lsp', 'buffer', 'snippets'},
      providers = {
        snippets = {min_keyword_length = 2},
        buffer = {min_keyword_length = 3},
        lsp = {fallbacks = {}},
        path = {fallbacks = {'lsp'}}
      },
    },
    keymap = {
      preset = 'none',
      ['<C-e>'] = {'hide', 'fallback'},
      ['<C-y>'] = {'select_and_accept', 'fallback'},
      ['<Enter>'] = {'accept', 'fallback'},

      ['<C-u>'] = {'scroll_documentation_up', 'fallback'},
      ['<C-d>'] = {'scroll_documentation_down', 'fallback'},
      ['<C-Space>'] = {'show_documentation', 'hide_documentation'},

      ['<Up>'] = {'select_prev', 'fallback'},
      ['<Down>'] = {'select_next', 'fallback'},
      ['<C-p>'] = {'select_prev', 'fallback_to_mappings'},
      ['<C-n>'] = {'select_next', 'fallback_to_mappings'},
      ['<S-Tab>'] = {'select_prev', 'fallback'},
      ['<Tab>'] = {
        'select_next',
        function(cmp)
          local cursor_pos = vim.api.nvim_win_get_cursor(0)
          local col = cursor_pos[2]

          if col == 0 then
            return
          end

          local line = cursor_pos[1] - 1
          local ch = vim.api.nvim_buf_get_text(0, line, col - 1, line, col, {})[1] or ''
          if ch == '' or ch:match('%s') then
            return
          end

          return cmp.show()
        end,
        'fallback'
      },
    },
  })
end)

