local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  vim.cmd('packadd packer.nvim')
  install_plugins = true
end

require('packer').startup(function(use)
    -- Plugin manager
  use {'wbthomason/packer.nvim', commit = 'b32b982d52664a0a6c5a43a5f9934f001d722d4e'}

  -- Theming
  use {'folke/tokyonight.nvim', commit = '791c2a219a9425a5817fafc2dd2dcf65c4a0abde'}
  use {'joshdick/onedark.vim', commit = '1fe54f212f09a03c2b5e277f0fe5b7b9d0b0a4ed'}
  use {'tanvirtin/monokai.nvim', commit = '4fc970efcbbdcd614733eb8c68d3b8bf8bddec3e'}
  use {'lunarvim/darkplus.nvim', commit = 'aa1f0a582dc897259b9cb8bebad64110da4d4cc4'}
  use {'kyazdani42/nvim-web-devicons', commit = '2d02a56189e2bde11edd4712fea16f08a6656944'}
  use {
    'nvim-lualine/lualine.nvim',
    config = function() pcall(require, 'plugins.lualine') end,
    commit = '3cf45404d4ab5e3b5da283877f57b676cb78d41d'
  }
  use {
    'akinsho/bufferline.nvim',
    config = function() pcall(require, 'plugins.bufferline') end,
    commit = '938908fc8db120d907bda23f6744202f534f63e4'
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function() pcall(require, 'plugins.indent-blankline') end,
    commit = 'c15bbe9f23d88b5c0b4ca45a446e01a0a3913707'
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() pcall(require, 'plugins.nvim-tree') end,
    commit = 'c3ea264947671f44d836af5b7587e12c4b4611f9'
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function() pcall(require, 'plugins.telescope') end,
    commit = 'b923665e64380e97294af09117e50266c20c71c7'
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    commit = '6791f74e9f08a9412c43dcba805ecf2f8888bdde'
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function() pcall(require, 'plugins.gitsigns') end,
    commit = 'f6c9596051584ca1e8f455db449330b4e211cb88'
  }
  use {'tpope/vim-fugitive', commit = 'b411b753f805b969cca856e2ae51fdbab49880df'}

  -- Code manipulation
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() pcall(require, 'plugins.treesitter') end,
    commit = '7845f31839b844653736eed6dd284c862156d679'
  }
  use {'nvim-treesitter/nvim-treesitter-textobjects', commit = '8bf4c07320a19b3e02dd0222c04a532c9c10c752'}
  use {
    'numToStr/Comment.nvim',
    config = function() pcall(require, 'plugins.comment') end,
    commit = '80e7746e42fa685077a7941e9022308c7ad6adf8'
  }
  use {'tpope/vim-surround', commit = 'bf3480dc9ae7bea34c78fbba4c65b4548b5b1fea'}
  use {'wellle/targets.vim', commit = '8d6ff2984cdfaebe5b7a6eee8f226a6dd1226f2d'}
  use {'tpope/vim-repeat', commit = '24afe922e6a05891756ecf331f39a1f6743d3d5a'}

  -- Utilities
  use {'moll/vim-bbye', commit = '25ef93ac5a87526111f43e5110675032dbcacf56'}
  use {'nvim-lua/plenary.nvim', commit = 'a3dafaa937921a4eb2ae65820c3479ab561e9ba3'}
  use {'editorconfig/editorconfig-vim', commit = 'd354117b72b3b43b75a29b8e816c0f91af10efe9'}
  use {'akinsho/toggleterm.nvim', commit = 'cd3b4d67112fbc8bee01ea44ba5ad1eea3894714'}

  -- LSP support
  use {'williamboman/mason.nvim', commit = '1db210953331437824b6e6718118bc478f06b424'}
  use {'williamboman/mason-lspconfig.nvim', commit = '99a942105978054fd5c1fee6267e746dde18a21a'}
  use {
    'neovim/nvim-lspconfig',
    config = function() pcall(require, 'plugins.lsp') end,
    commit = 'df17834baeba1b8425c15a31cbf52e6b23115c37'
  }

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    config = function() pcall(require, 'plugins.nvim-cmp') end,
    commit = 'b5885696b1f2cbdc9f523cc09c2a786919de07d5'
  }
  use {'hrsh7th/cmp-buffer', commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa'}
  use {'hrsh7th/cmp-path', commit = '447c87cdd6e6d6a1d2488b1d43108bfa217f56e1'}
  use {'saadparwaiz1/cmp_luasnip', commit = 'a9de941bcbda508d0a45d28ae366bb3f08db2e36'}
  use {'hrsh7th/cmp-nvim-lsp', commit = 'affe808a5c56b71630f17aa7c38e15c59fd648a8'}

  -- Snippets
  use {
    'L3MON4D3/LuaSnip',
    config = function() pcall(require, 'plugins.luasnip') end,
    commit = '18439321965ed6deb849b9a438bd95a16184430d'
  }
  use {'rafamadriz/friendly-snippets', commit = 'e5a16f9346e1fa24147d6d23460ca9b41528ab7e'}

  if install_plugins then
    require('packer').sync()
  end
end)

if install_plugins then
  print '=================================='
  print '    Plugins will be installed.'
  print '    After you press Enter'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
end

