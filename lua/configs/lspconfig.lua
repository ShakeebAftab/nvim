require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "gopls" }
vim.lsp.enable(servers)

local lspconfig = require("lspconfig")

lspconfig.eslint.setup {
  on_attach = function(client, bufnr)
    -- Enable format on save
    if client.resolved_capabilities.document_formatting then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("LspFormatting", {}),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.formatting_sync(nil, 1000) -- Adjust timeout as needed
        end,
      })
    end
  end,
}

-- read :h vim.lsp.config for changing options of lsp servers
