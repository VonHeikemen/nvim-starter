# Neovim Starter

Base configuration for Neovim. For those looking to make Neovim their new main editor. Here you'll find a popular combination of plugin to make your experience a little bit better.

A few things have been configured to resemble other modern text editors. You'll find a file explorer with tree style view, list open files in tabs, git integration and a terminal easy to toggle.

Autocompletion and "code intellisense" is provided by the LSP client built into Neovim. The following language servers are configured:

* lua-language-server
* rust-analyzer

To understand more about this configuration you read these resources:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Neovim: Plugins to get started](https://vonheikemen.github.io/devlog/tools/neovim-plugins-to-get-started/)
* [About nvim-lspconfig](https://vonheikemen.github.io/learn-nvim/feature/lsp-setup.html#about-nvim-lspconfig)
* [mason.nvim](https://github.com/mason-org/mason.nvim/blob/main/doc/mason.txt)
* [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim/blob/main/doc/mason-lspconfig.txt)

## Requirements

* Neovim v0.11.4 or greater.
* git.
* [tree-sitter CLI](https://github.com/tree-sitter/tree-sitter)
* A `C` compiler. Can be `gcc`, `tcc` or `zig`.
* (optional) [ripgrep](https://github.com/BurntSushi/ripgrep). Improves project wide search speed.
* (optional) [fd](https://github.com/sharkdp/fd). Improves file search speed.
* (optional) A patched font to display icons. I hear [nerdfonts](https://www.nerdfonts.com/) has a good collection.

## Installation

* Backup your existing configuration if you have one.

* If you don't know the path of the Neovim configuration folder use this command.

  ```sh
  nvim --headless -c 'echo stdpath("config") | quit'
  ```

* Now clone this repository in that location.

  ```sh
  git clone --branch=05-modular https://github.com/VonHeikemen/nvim-starter /tmp/nvim-config-path
  ```

  > Do not execute this command as is. Replace `/tmp/nvim-config-path` with the correct path from the previous step.

* Next time you start Neovim all plugins will be downloaded automatically. After this process is done `nvim-treesitter` will install language parsers for treesitter. And, `mason.nvim` will download language servers listed in the configuration. Use the command `:Mason` to check the download process of language servers.

## Keybindings

Leader key: `Space`.

| Mode     | Key               | Action                                                                  |
| ---      | ---               | ---                                                                     |
| Normal   | `<leader>h`       | Go to first non empty character in line.                                |
| Normal   | `<leader>l`       | Go to last non empty character in line.                                 |
| Normal   | `<leader>a`       | Select all text.                                                        |
| Normal   | `gy`              | Copy selected text to clipboard.                                        |
| Normal   | `gp`              | Paste clipboard content.                                                |
| Normal   | `x`               | Delete character under cursor without modifying any register.           |
| Operator | `X`               | Delete operator, like `d` but it doesn't modify any register.           |
| Normal   | `<leader>w`       | Save file.                                                              |
| Normal   | `<leader>bq`      | Close current buffer.                                                   |
| Normal   | `<leader>bc`      | Close current buffer while preserving the window layout.                |
| Normal   | `<leader>bl`      | Go to last active buffer.                                               |
| Normal   | `gcc`             | Toggle comment in current line.                                         |
| Operator | `gc`              | Toggle comment in text.                                                 |
| Normal   | `gt`              | Pick a visible tab.                                                     |
| Normal   | `<leader><space>` | Search open buffers.                                                    |
| Normal   | `<leader>ff`      | Find file in current working directory.                                 |
| Normal   | `<leader>fh`      | Search oldfiles history.                                                |
| Normal   | `<leader>fg`      | Search pattern in current working directory. Interactive "grep search". |
| Normal   | `<leader>fd`      | Search diagnostics in current file.                                     |
| Normal   | `<leader>fs`      | Search pattern in current file.                                         |
| Normal   | `<leader>u`       | Search undo history.                                                    |
| Normal   | `<leader>?`       | Search keymaps.                                                         |
| Normal   | `<leader>/`       | Search all available snack pickers.                                     |
| Normal   | `<leader>e`       | Open file explorer.                                                     |
| Normal   | `<Ctrl-g>`        | Toggle a terminal window.                                               |
| Terminal | `<Esc><Esc>`      | Pressing `Escape` twice quickly goes back to normal mode.               |

### Autocomplete keybindings

| Mode   | Key           | Action                                                                   |
| ---    | ---           | ---                                                                      |
| Insert | `<Up>`        | Move to previous item.                                                   |
| Insert | `<Down>`      | Move to next item.                                                       |
| Insert | `<Ctrl-p>`    | Move to previous item.                                                   |
| Insert | `<Ctrl-n>`    | Move to next item.                                                       |
| Insert | `<Ctrl-u>`    | Scroll up in documentation window.                                       |
| Insert | `<Ctrl-d>`    | Scroll down in documentation window.                                     |
| Insert | `<Ctrl-Space>`| Toggle documentation window.                                             |
| Insert | `<Ctrl-e>`    | Cancel completion.                                                       |
| Insert | `<C-y>`       | Confirm completion.                                                      |
| Insert | `<Enter>`     | Confirm completion.                                                      |
| Insert | `<Ctrl-l>`    | Go to next placeholder in snippet.                                       |
| Insert | `<Ctrl-h>`    | Go to previous placeholder in snippet.                                   |
| Insert | `<Tab>`       | If completion menu is open, go to next item. Else, open completion menu. |
| Insert | `<Shift-Tab>` | If completion menu is open, go to previous item.                         |

## Plugin list

| Name                                                                  | Description                                                           |
| ---                                                                   | ---                                                                   |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)           | A dark theme for Neovim.                                              |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim)                   | Collection of independent lua modules that enhance Neovim's features. |
| [snacks.nvim](https://github.com/folke/snacks.nvim)                   | Collection of QoL plugins.                                            |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)         | Pretty tabline.                                                       |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)            | Quickstart configurations for various language servers.               |
| [mason.nvim](https://github.com/mason-org/mason.nvim)                 | Installer for external tools.                                         |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason.nvim)       | mason.nvim extension. Provides the command `:LspInstall`.             |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)            | Quickstart configurations for various language servers.               |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Provides easy access to treesitter parsers and queries.               |
| [vim-repeat](https://github.com/tpope/vim-repeat)                     | Add "repeat" support for plugins.                                     |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)  | Collection of custom snippets for many programming languages.         |

