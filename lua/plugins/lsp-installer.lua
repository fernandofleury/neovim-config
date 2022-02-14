local installer = require('nvim-lsp-installer')

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach
  }

  server:setup(opts)
end)
