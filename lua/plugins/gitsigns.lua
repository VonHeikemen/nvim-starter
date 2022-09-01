local ok, gitsigns = pcall(require, 'gitsigns')
if not ok then return end

-- See :help gitsigns-usage
gitsigns.setup({
  signs = {
    add = {text = '▎'},
    change = {text = '▎'},
    delete = {text = '➤'},
    topdelete = {text = '➤'},
    changedelete = {text = '▎'},
  }
})

