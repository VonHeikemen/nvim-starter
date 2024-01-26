# Neovim Starter

Note: it seems like github is showing the same readme in all branches. If you got here after clicking a link from a different branch, go to the "instructions" link of the branch you wanted to visit.

## Configurations

### Minimal

Small configuration without third party plugins.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/00-minimal/README.md)

### Base

Small configuration that includes a plugin manager. It can provide a good base to start your own configuration.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/01-base)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/01-base/README.md)

### Opinionated

Opinionated configuration. It includes a combination of popular plugins. For the people who are looking to make Neovim their main editor but don't want to start from scratch. Plugins related to "code intellisense" are not included in this config.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/02-opinionated/README.md)

### LSP

Example configuration showing how to configure the built-in LSP client with autocompletion. It is based on `02-opinionated`.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/03-lsp/README.md)

### LSP Installer

Same as `lsp` but uses [mason.nvim](https://github.com/williamboman/mason.nvim) to install language servers.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/04-lsp-installer/README.md)

### Modular

Same as `lsp installer` but everything is split in modules.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/05-modular)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/05-modular/README.md)

## Other template configurations

* [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
* [Launch.nvim](https://github.com/LunarVim/Launch.nvim)
* [tinyvim](https://github.com/NvChad/tinyvim)
* [dope](https://github.com/glepnir/dope)

## Example setups

### Light

Minimal configuration focused on providing "basic features" with little boilerplate. With less than 200 lines of code: includes improved syntax highlight, a fuzzy finder and a ready made LSP setup with autocompletion.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/xx-light)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/xx-light/README.md)

### lsp-cmp

Minimal setup with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/xx-lsp-cmp)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/xx-lsp-cmp/README.md)

### mason.nvim

Minimal setup with mason.nvim.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/xx-mason)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/xx-mason/README.md)

### LSP without plugins

Example lua configuration showing one way to setup LSP servers without plugins.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/xx-basic-lsp)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/xx-basic-lsp/README.md)

### User plugins

Configuration without 3rd party plugins. Includes "small user plugins" to provide its features.

* [Link to branch](https://github.com/VonHeikemen/nvim-starter/tree/xx-user-plugins)
* [Instructions](https://github.com/VonHeikemen/nvim-starter/blob/xx-user-plugins/README.md)

## Learn how to configure Neovim

* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Neovim: Plugins to get started](https://vonheikemen.github.io/devlog/tools/neovim-plugins-to-get-started/)
* [Setup nvim-lspconfig + nvim-cmp](https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/)
* [Move from init.vim to init.lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
* [A guide on Neovim's LSP client](https://vonheikemen.github.io/devlog/tools/neovim-lsp-client-guide/)
* [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)

## Videos

* [Vim As Your Editor - Introduction](https://www.youtube.com/watch?v=X6AR2RMB5tE) 
* [Vim As Your Editor - Horizontal Movements](https://youtu.be/5JGVtttuDQA) 
* [Vim As Your Editor - Vertical Movements](https://www.youtube.com/watch?v=KfENDDEpCsI) 
* [Understanding Neovim - Installation, creating init.lua](https://www.youtube.com/watch?v=87AXw9Quy9U)
* [Understanding Neovim - Plugins, colorschemes](https://www.youtube.com/watch?v=87AXw9Quy9U)
* [Understanding Neovim - "Proper structure"](https://www.youtube.com/watch?v=87AXw9Quy9U)
* [Understanding Neovim - Treesitter](https://www.youtube.com/watch?v=kYXcxJxJVxQ) 
* [Understanding Neovim - Lua syntax and Treesitter modules](https://www.youtube.com/watch?v=ff0GYrK3nT0) 
* [Understanding Neovim - vim options](https://www.youtube.com/watch?v=Cp0iap9u29c) 
* [Neovim Builtin LSP Setup Guide](https://www.youtube.com/watch?v=puWgHa7k3SY) 
* [Debugging in Neovim](https://www.youtube.com/watch?v=0moS8UHupGc)
* [Mastering The Macro Machine - Vimconf.live 2021](https://www.youtube.com/watch?v=ZMA6MghrpWM) 
* [Building a Neovim plugin (in lua) from scratch](https://www.youtube.com/watch?v=n4Lp4cV8YR0)

