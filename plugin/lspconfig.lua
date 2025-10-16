if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add('neovim/nvim-lspconfig')
MiniDeps.add('mason-org/mason.nvim')
MiniDeps.add('mason-org/mason-lspconfig.nvim')

MiniDeps.now(function()
  -- Learn about mason.nvim
  -- :help mason-introduction
  -- :help mason-quickstart
  -- :help mason-default-settings
  require('mason').setup({})

  -- Learn about mason-lspconfig
  -- :help mason-lspconfig-quickstart
  -- :help mason-lspconfig-default-settings
  require('mason-lspconfig').setup({
    automatic_enable = false,
    ensure_installed = {
      'lua_ls',
      'rust_analyzer',
    },
  })

  vim.lsp.enable({'rust_analyzer', 'lua_ls'})
end)

