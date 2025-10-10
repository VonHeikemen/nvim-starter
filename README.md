# Neovim Starter

Base configuration for Neovim. For those looking to make Neovim their new main editor. Here you'll find a popular combination of plugin to make your experience a little bit better.

A few things have been configured to resemble other modern text editors. You'll find a file explorer with tree style view, list open files in tabs, git integration, a terminal easy to toggle.

All the code in this configuration is explained in these two articles:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Neovim: Plugins to get started](https://vonheikemen.github.io/devlog/tools/neovim-plugins-to-get-started/)

Autocompletion and "code intellisense" is omitted on this configuration.

## Requirements

* Neovim v0.9.5 or greater.
* git.
* A `C` compiler. Can be `gcc`, `tcc` or `zig`.
* (optional) [ripgrep](https://github.com/BurntSushi/ripgrep). Improves project wide search speed.
* (optional) [fd](https://github.com/sharkdp/fd). Improves file search speed.
* (optional) A patched font to display icons. I hear [nerdfonts](https://www.nerdfonts.com/) has a good collection.

## Installation

* Backup your existing configuration if you have one.

* Create an `init.lua` file in your system. Use this command if you don't know the specific location of Neovim's configuration folder.

```sh
nvim --headless -c 'exe "write ++p" stdpath("config") . "/init.lua"' -c 'quit'
```

* Copy the content of `init.lua` in this repository into your own `init.lua`.

* Open Neovim, use the command `nvim` in your terminal. When Neovim starts all plugins will be downloaded automatically.

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

## Plugin list

| Name                                                                                          | Description                                                           |
| ---                                                                                           | ---                                                                   |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)                                   | A dark theme for Neovim.                                              |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim)                                           | Collection of independent lua modules that enhance Neovim's features. |
| [snacks.nvim](https://github.com/folke/snacks.nvim)                                           | Collection of QoL plugins.                                            |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                                 | Pretty tabline.                                                       |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                         | Configures treesitter parsers. Provides modules to manipulate code.   |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Creates textobjects based on treesitter queries.                      |
| [vim-repeat](https://github.com/tpope/vim-repeat)                                             | Add "repeat" support for plugins.                                     |

