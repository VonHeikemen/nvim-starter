# Neovim Starter

Minimal example lua configuration. I do mean minimal, there are no third party plugins involved. It's meant to showcase enough about Neovim's lua api so you can build your configuration.

Most of the code in this configuration is explained here:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)

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

## Keybindings

Leader key: `Space`.

| Mode    | Key    | Action    |
| --- | --- | --- |
| Normal  | `<leader>h` | Go to first non empty character in line. |
| Normal  | `<leader>l` | Go to last non empty character in line. |
| Normal  | `<leader>a` | Select all text. |
| Normal  | `gy` | Copy selected text to clipboard. |
| Normal  | `gp` | Paste clipboard content. |
| Normal  | `<leader>w` | Save file. |
| Normal  | `<leader>bq` | Close current buffer. |
| Normal  | `<leader>bl` | Go to last active buffer. |
| Normal  | `<leader><space>` | Show open files. |
| Normal  | `<leader>e` | Toggle file explorer. When opened show the directory of the current file. |
| Normal  | `<leader>E` | Toggle file explorer. When opened it shows files in the current working directory. |

