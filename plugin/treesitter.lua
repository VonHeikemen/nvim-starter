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

MiniDeps.add('VonHeikemen/ts-enable.nvim')

MiniDeps.now(function()
  -- NOTE: the list of supported parsers is in the documentation
  -- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
  local ts_parsers = {'lua', 'vim', 'vimdoc'}

  -- See :help ts-enable-config
  vim.g.ts_enable = {
    parsers = ts_parsers,
    auto_install = true,
    highlights = true,
  }
end)

