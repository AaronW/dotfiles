require('lspconfig').jsonls.setup({
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = require('lsp.utils').on_attach,
  root_dir = require('lspconfig.util').root_pattern('.git'),
})
