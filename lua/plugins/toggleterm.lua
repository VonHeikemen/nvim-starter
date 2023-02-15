local Plugin = {'akinsho/toggleterm.nvim'}

Plugin.name = 'toggleterm'

-- See :help toggleterm-roadmap
Plugin.opts = {
  open_mapping = '<C-g>',
  direction = 'horizontal',
  shade_terminals = true
}

return Plugin
