local Plugin = {'moll/vim-bbye'}

function Plugin.init()
  vim.keymap.set('n', '<leader>bc', '<cmd>Bdelete<CR>')
end

return Plugin
