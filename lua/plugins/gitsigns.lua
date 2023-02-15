local Plugin = {'lewis6991/gitsigns.nvim'}

Plugin.name = 'gitsigns'

-- See :help gitsigns-usage
Plugin.opts = {
  signs = {
    add = {text = '▎'},
    change = {text = '▎'},
    delete = {text = '➤'},
    topdelete = {text = '➤'},
    changedelete = {text = '▎'},
  }
}

return Plugin

