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
  require('nvim-treesitter').install(parsers)

  local ts = vim.treesitter
  local ts_filetypes = vim.iter(parsers)
    :map(ts.language.get_filetypes)
    :flatten()

  vim.api.nvim_create_autocmd('FileType', {
    desc = 'enable treesitter',
    callback = function(event)
      local ft = event.match
      if not ts_filetypes:find(ft) then
        return
      end

      local lang = ts.language.get_lang(ft)
      local ok, hl = pcall(ts.query.get, lang, 'highlights')

      if ok and hl then
        ts.start(event.buf, lang)
      end
    end,
  })
end)

