# Neovim Starter

Base configuration for Neovim. Meant to be somewhat unopinionated but small. The plugin manager ([packer.nvim](https://github.com/wbthomason/packer.nvim)) will be downloaded along side all plugins the first time you open Neovim.

All the code in this configuration is explained here:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Startup Plugins](https://vonheikemen.github.io/devlog/es/tools/neovim-startup-plugins/)
* [Setup nvim-lspconfig + nvim-cmp](https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/)

## Requirements

* Neovim v0.7 or greater.
* git.
* A `C` compiler. Can be `gcc`, `tcc` or `zig`.
* [make](https://www.gnu.org/software/make/).
* [tsserver](https://github.com/theia-ide/typescript-language-server).
* [eslint](https://github.com/hrsh7th/vscode-langservers-extracted).
* [vscode-html-language-server](https://github.com/hrsh7th/vscode-langservers-extracted).
* [vscode-css-language-server](https://github.com/hrsh7th/vscode-langservers-extracted).
* (optional) [ripgrep](https://github.com/BurntSushi/ripgrep). Improves project wide search speed.
* (optional) [fd](https://github.com/sharkdp/fd). Improves file search speed.
* (optional) A patched font to display icons. I hear [nerdfonts](https://www.nerdfonts.com/) has a good collection.

## Installation

* Backup your existing configuration if you have one.

* Create an `init.lua` file in your system. Use this command if you don't know the specific location of Neovim's configuration folder.

```sh
nvim --headless -c 'call mkdir(stdpath("config"), "p") | exe "edit" stdpath("config") . "/init.lua" | write | quit'
```

* Open your configuration file with Neovim.

```sh
nvim -c 'edit $MYVIMRC'
```

* Copy the content of `init.lua` in this repository into your own `init.lua`.

* Restart Neovim. Wait until plugins are installed then restart Neovim again.

## Keybindings

Leader key: `Space`.

| Mode | Key | Action |
| --- | --- | --- |
| Normal | `<leader>h` | Go to first non empty character in line. |
| Normal | `<leader>l` | Go to last non empty character in line. |
| Normal | `<leader>a` | Select all text. |
| Normal | `cp` | Copy selected text to clipboard. |
| Normal | `cv` | Paste clipboard content. |
| Normal | `<leader>w` | Save file. |
| Normal | `<leader>bq` | Close current buffer. |
| Normal | `<leader>bl` | Go to last active buffer. |
| Normal | `<leader>?` | Search oldfiles history. |
| Normal | `<leader><space>` | Search open buffers. |
| Normal | `<leader>ff` | Find file in current working directory. |
| Normal | `<leader>fg` | Search pattern in current working directory. Interactive "grep search". |
| Normal | `<leader>fd` | Search diagnostics in current file. |
| Normal | `<leader>fs` | Search pattern in current file. |
| Normal | `<leader>e` | Open file explorer. |
| Normal | `K` | Displays hover information about the symbol under the cursor. |
| Normal | `gd` | Jump to the definition. |
| Normal | `gD` | Jump to declaration. |
| Normal | `gi` | Lists all the implementations for the symbol under the cursor. |
| Normal | `go` | Jumps to the definition of the type symbol |
| Normal | `gr` | Lists all the references. |
| Normal | `<C-k>` | Displays a function's signature information. |
| Normal | `<F2>` | Renames all references to the symbol under the cursor. |
| Normal | `<F4>` | Selects a code action available at the current cursor position. |
| Visual | `<F4>` | Selects a code action available in the selected text. |
| Normal | `gl` | Show diagnostics in a floating window. |
| Normal | `[d` | Move to the previous diagnostic. |
| Normal | `]d` | Move to the next diagnostic. |

### Autocomplete keybindings.

| Mode | Key | Action |
| --- | --- | --- |
| Insert | `<Up>` | Move to previous item. |
| Insert | `<Down>` | Move to next item. |
| Insert | `<C-p>` | Move to previous item. |
| Insert | `<C-n>` | Move to next item. |
| Insert | `<C-u>` | Scroll up in documentation window. |
| Insert | `<C-f>` | Scroll down in documentation window. |
| Insert | `<C-e>` | Cancel completion. |
| Insert | `<Enter>` | Confirm completion. |
| Insert | `<C-d>` | Go to next placeholder in snippet. |
| Insert | `<C-b>` | Go to previous placeholder in snippet. |
| Insert | `<Tab>` | If completion menu is open, go to next item. Else, open completion menu. |
| Insert | `<S-Tab>` | If completion menu is open, go to previous item. |

## Plugin list

| Name | Description  |
| --- | --- | 
| [packer.nvim](https://github.com/wbthomason/packer.nvim) | Plugin manager. |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Collection of colorscheme for Neovim. |
| [onedark.vim](https://github.com/joshdick/onedark.vim) | Colorscheme based on Atom's default theme. |
| [monokai.nvim](https://github.com/tanvirtin/monokai.nvim) | Colorscheme based on Sublime text's default theme. |
| [darkplus.nvim](https://github.com/lunarvim/darkplus.nvim) | Colorscheme based on VS Code's default theme. |
| [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) | Helper functions to show icons. |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Pretty statusline. |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Pretty tabline. |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Shows indent guides in current file. |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | File explorer. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder. |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Extension for telescope. Allows fzf-like syntax in searches. |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Shows indicators in gutter based on file changes detected by git. |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration into Neovim/Vim. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Configures treesitter parsers. Provides modules to manipulate code. |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Creates textobjects based on treesitter queries. |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Toggle comments. |
| [vim-surround](https://github.com/tpope/vim-surround) | Add, remove, change "surroundings". |
| [targets.vim](https://github.com/wellle/targets.vim) | Creates new textobjects. |
| [vim-repeat](https://github.com/tpope/vim-repeat) | Add "repeat" support for plugins. |
| [vim-bbye](https://github.com/moll/vim-bbye) | Close buffers without closing the current window. |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Collection of modules. Used internaly by other plugins. |
| [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) | Add support for [.editoriconfig](https://editorconfig.org/) file. |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Quickstart configs for Neovim's LSP client.  |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine. |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | nvim-cmp source. Suggest words in the current buffer. |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | nvim-cmp source. Show suggestions based on file system paths. |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | nvim-cmp source. Show suggestions based on installed snippets. |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | nvim-cmp source. Show suggestions based on LSP servers queries. |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine. |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Collection of snippets. |

