return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim',
            }
          }
        }
      }
    })
    require'lspconfig'.pylsp.setup{
      capabilities = capabilities
    }
    require'lspconfig'.phpactor.setup{
    }
  end,
}
