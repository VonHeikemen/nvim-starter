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
  use {'wbthomason/packer.nvim'}

  -- Theming
  use {'folke/tokyonight.nvim'}
  use {'joshdick/onedark.vim'}
  use {'tanvirtin/monokai.nvim'}
  use {'lunarvim/darkplus.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.lualine') end
  }
  use {
    'akinsho/bufferline.nvim',
    config = function() require('plugins.bufferline') end
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function() require('plugins.indent-blankline') end
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly',
    config = function() require('plugins.nvim-tree') end
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require('plugins.telescope') end
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('plugins.gitsigns') end
  }
  use {'tpope/vim-fugitive'}

  -- Code manipulation
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugins.treesitter') end
  }
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {
    'numToStr/Comment.nvim',
    config = function() require('plugins.comment') end
  }
  use {'tpope/vim-surround'}
  use {'wellle/targets.vim'}
  use {'tpope/vim-repeat'}

  -- Utilities
  use {'moll/vim-bbye'}
  use {'nvim-lua/plenary.nvim'}
  use {'editorconfig/editorconfig-vim'}

  -- LSP support
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugins.lsp') end
  },

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    config = function() require('plugins.nvim-cmp') end
  },
  use {'hrsh7th/cmp-buffer'},
  use {'hrsh7th/cmp-path'},
  use {'saadparwaiz1/cmp_luasnip'},
  use {'hrsh7th/cmp-nvim-lsp'},
  use {'hrsh7th/cmp-nvim-lua'},

  -- Snippets
  use {
    'L3MON4D3/LuaSnip',
    config = function() require('plugins.luasnip') end
  },
  use {'rafamadriz/friendly-snippets'},

  if install_plugins then
    require('packer').sync()
  end
end)

if install_plugins then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
end

