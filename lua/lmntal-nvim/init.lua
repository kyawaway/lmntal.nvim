local M = {}

M.setup = function()
  -- filetype detection
  vim.filetype.add {
    extension = {
      lmn = "lmntal",
    },
  }

  -- language server
  if pcall(require, "lspconfig") then
    require("lspconfig.configs").lmntal_ls = {
      default_config = {
        cmd = { 'lmntal-language-server' },
        filetypes = { 'lmntal' },
        root_dir = require("lspconfig.util").root_pattern('.git'),
        single_file_support = true,
      },
      docs = {
        description = [[
          https://github.com/QRWells/lmntal-language-server
          Language server for LMNtal.
          ]],
        default_config = {
          root_dir = [[root_pattern(".git")]],
        },
      },
    }
    if pcall(require, "mason-lspconfig") then
      pcall(function()
        -- This is not a public API, so it may be broken by in a future release.
        require("mason-lspconfig.mappings.server").lspconfig_to_package["lmntal_ls"] = "lmntal-language-server"
        require("mason-lspconfig.mappings.server").package_to_lspconfig["lmntal-language-server"] = "lmntal_ls"
      end)
    end
  end

return M
