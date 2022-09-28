vim.api.nvim_create_user_command('GitClonePacker', function()
  local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  vim.cmd('quitall')
end, {})

local ok, packer = pcall(require, 'packer')
if not ok then return end

packer.startup(function(use)
  use {'wbthomason/packer.nvim'}            -- Plugin manager
  use {'joshdick/onedark.vim'}              -- Colorscheme
  use {'williamboman/mason.nvim'}           -- Installer for external tools
  use {'williamboman/mason-lspconfig.nvim'} -- mason extension for LSP
  use {'neovim/nvim-lspconfig'}             -- LSP server configurations
  use {'hrsh7th/nvim-cmp'}                  -- Autocomplete engine
  use {'hrsh7th/cmp-nvim-lsp'}              -- Completion source
  use {'saadparwaiz1/cmp_luasnip'}          -- Completion source
  use {'hrsh7th/cmp-buffer'}                -- Completion source
  use {'hrsh7th/cmp-path'}                  -- Completion source
  use {'L3MON4D3/LuaSnip'}                  -- Snippet engine
  use {'rafamadriz/friendly-snippets'}      -- Snippet collection
  use {'VonHeikemen/lsp-zero.nvim'}         -- Preconfigured Autocomplete + LSP setup
end)

vim.opt.termguicolors = true
vim.cmd('colorscheme onedark')

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

