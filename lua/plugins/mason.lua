local Plugin = {'williamboman/mason.nvim'}

Plugin.dependencies = {
  {'williamboman/mason-lspconfig.nvim'},
}

function Plugin.config()
  -- See :help mason-settings
  require('mason').setup({
    ui = {border = 'rounded'}
  })

  -- See :help mason-lspconfig-settings
  require('mason-lspconfig').setup({
    ensure_installed = {
      'eslint',
      'tsserver',
      'html',
      'cssls',
      'lua_ls',
    }
  })
end

return Plugin
