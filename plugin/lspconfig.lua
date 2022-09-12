local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require('lspconfig').cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require('lspconfig').tailwindcss.setup{}
