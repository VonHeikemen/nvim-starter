# Neovim Starter

Minimal working configuration with mason.nvim + nvim-lspconfig.

The following language servers are configured:

* lua_ls
* rust_analyzer

## Requirements

* Neovim v0.11 or greater.
* git.

## Keybindings

Leader key: `Space`.

| Mode     | Key               | Action                                                                  |
| ---      | ---               | ---                                                                     |
| Normal   | `K`               | Displays hover information about the symbol under the cursor.           |
| Normal   | `gd`              | Jump to the definition.                                                 |
| Normal   | `gq`              | Format code in current buffer.                                          |
| Normal   | `gO`              | Lists symbols in the current buffer.                                    |
| Normal   | `<C-s>`           | Displays a function's signature information.                            |
| Normal   | `gri`             | Lists all the implementations for the symbol under the cursor.          |
| Normal   | `grr`             | Lists all the references.                                               |
| Normal   | `grn`             | Renames all references to the symbol under the cursor.                  |
| Normal   | `gra`             | Selects a code action available at the current cursor position.         |
| Normal   | `grd`             | Jump to declaration.                                                    |
| Normal   | `grt`             | Jumps to the definition of the type symbol                              |
| Normal   | `<Ctrl-w>d`       | Show diagnostics in a floating window.                                  |
| Normal   | `[d`              | Move to the previous diagnostic.                                        |
| Normal   | `]d`              | Move to the next diagnostic.                                            |
| Normal   | `gcc`             | Toggle comment in current line.                                         |
| Operator | `gc`              | Toggle comment in text.                                                 |

### Autocomplete keybindings

| Mode   | Key            | Action                                                          |
| ---    | ---            | ---                                                             |
| Insert | `<Up>`         | Move to previous item.                                          |
| Insert | `<Down>`       | Move to next item.                                              |
| Insert | `<Ctrl-p>`     | Move to previous item and insert content.                       |
| Insert | `<Ctrl-n>`     | Move to next item and insert content.                           |
| Insert | `<Ctrl-y>`     | Confirm completion.                                             |
| Insert | `<Enter>`      | Confirm completion if item was selected with Up or Down arrows. |
| Insert | `<Ctrl-e>`     | Cancel completion.                                              |

## Plugin list

| Name                                                                                     | Description                                                                    |
| ---                                                                                      | ---                                                                            |
| [lazy.nvim](https://github.com/folke/lazy.nvim)                                          | Plugin manager.                                                                |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                                 | Portable package manager for Neovim.                                           |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)             | Integrates nvim-lspconfig and mason.nvim.                                      |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                               | Quickstart configs for Neovim's LSP client.                                    |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim)                                      | Collection of independent lua modules that enhance Neovim's features.          |

