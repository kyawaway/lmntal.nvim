# lmntal.nvim

Provides configurations of [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for [LMNtal](https://www.ueda.info.waseda.ac.jp/lmntal/index.php).

## Settings

```lua
require("lmntal-nvim").setup()
```

## Features

### `nvim-lspconfig` integration

This plugin registers [`lmntal-language-server`](https://github.com/QRWells/lmntal-language-server) to lspconfig as `lmntal_ls`.
So you can setup `lmntal-language-serve` as follows.

```lua
require("lspconfig").lmntal_ls.setup {}
```

You can also benefit from `ensure_installed` or `automatic-server-setup` functionality if you are using [`mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim).

See also [lmntal-mason-registry](https://github.com/kyawaway/lmntal-mason-registry) for installation of satysfi-language-server using [mason.nvim](https://github.com/williamboman/mason.nvim).

### `nvim-treesitter` integration

(WIP)

## LICENSE

This software is released under the MIT License, see LICENSE.
