local null_ls = require('null-ls')
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.eslint_d.with({
        diagnostics_format = 'Eslint: #{m} \n(#{c})'
      }),
    },
on_attach = function (client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({
          filter = function(client)
            return client.name == 'null-ls'
          end,
          bufnr = bufnr
        })
      end
  })
    end
  end
})
