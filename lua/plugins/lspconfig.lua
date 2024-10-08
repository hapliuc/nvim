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
    require'lspconfig'.clangd.setup{}
    require'lspconfig'.pylsp.setup{
      capabilities = capabilities
    }
    require'lspconfig'.phpactor.setup{}
    require'lspconfig'.bashls.setup{}
    require'lspconfig'.emmet_language_server.setup{}
  end,
}
