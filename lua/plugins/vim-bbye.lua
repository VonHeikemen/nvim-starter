local Plugin = {'moll/vim-bbye'}

Plugin.cmd = 'Bdelete'

function Plugin.init()
  vim.keymap.set('n', '<leader>bc', '<cmd>Bdelete<CR>')
end

return Plugin
