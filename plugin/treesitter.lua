if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add({
  source = 'nvim-treesitter/nvim-treesitter',
  checkout = 'main',
  hooks = {
    post_checkout = function()
      vim.cmd.TSUpdate()
    end,
  },
})

MiniDeps.now(function()
  -- NOTE: the list of supported parsers is in the documentation
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
  local parsers = {'lua', 'vim', 'vimdoc'}

  local ts = vim.treesitter
  local installed = require('nvim-treesitter').get_installed()

  local filetypes = vim.iter(parsers)
    :map(ts.language.get_filetypes)
    :flatten()
    :fold({}, function(tbl, v)
      tbl[v] = vim.tbl_contains(installed, v)
      return tbl
    end)

  local ts_enable = function(buffer, lang)
    local ok, hl = pcall(ts.query.get, lang, 'highlights')
    if ok and hl then
      ts.start(buffer, lang)
    end
  end

  vim.api.nvim_create_autocmd('FileType', {
    desc = 'enable treesitter',
    callback = function(event)
      local ft = event.match
      local available = filetypes[ft]
      if available == nil then
        return
      end

      local lang = ts.language.get_lang(ft)
      local buffer = event.buf

      if available then
        ts_enable(buffer, lang)
        return
      end

      require('nvim-treesitter').install(lang):await(function()
        filetypes[ft] = true
        ts_enable(buffer, lang)
      end)
    end,
  })
end)

