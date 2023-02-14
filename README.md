# Neovim Starter

Base configuration for Neovim. Meant to be unopinionated and minimal. It provides a colorscheme, a statusline and a plugin manager. And it shows just enough about Neovim's lua api so you can extend it to your liking.

All the code in this configuration is explained here:

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)

## Requirements

* Neovim v0.8 or greater.
* git.
* (optional) A patched font to display icons. I hear [nerdfonts](https://www.nerdfonts.com/) has a good collection.

[Here's the config compatible with Neovim v0.7](https://github.com/VonHeikemen/nvim-starter/tree/88f6afe64522afe5768f88e48ba28ede47aab744)

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

* Restart Neovim. Wait until plugins are installed.

## Keybindings

Leader key: `Space`.

| Mode    | Key    | Action    |
| --- | --- | --- |
| Normal  | `<leader>h` | Go to first non empty character in line. |
| Normal  | `<leader>l` | Go to last non empty character in line. |
| Normal  | `<leader>a` | Select all text. |
| Normal  | `cp` | Copy selected text to clipboard. |
| Normal  | `cv` | Paste clipboard content. |
| Normal  | `<leader>w` | Save file. |
| Normal  | `<leader>bq` | Close current buffer. |
| Normal  | `<leader>bl` | Go to last active buffer. |

