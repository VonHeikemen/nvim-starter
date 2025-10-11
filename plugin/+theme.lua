if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add('folke/tokyonight.nvim')

MiniDeps.now(function()
  -- See :help tokyonight.nvim-tokyo-night-configuration
  require('tokyonight').setup({
    styles = {
      comments = {italic = false},
      keywords = {italic = false},
    },
  })

  vim.cmd.colorscheme('tokyonight')

  -- See :help MiniIcons.config
  -- Change style to 'ascii' if you don't have a font with fancy icons
  require('mini.icons').setup({style = 'glyph'})
end)

