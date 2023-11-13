local Plugin = {'lukas-reineke/indent-blankline.nvim'}

Plugin.name = 'indent_blankline'

Plugin.main = 'ibl'

Plugin.event = {'BufReadPost', 'BufNewFile'}

-- See :help ibl.setup()
Plugin.opts = {
  enabled = true,
  scope = {
    enabled = false,
  },
  indent = {
    char = '▏',
  },
}

return Plugin
