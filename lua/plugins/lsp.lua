return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "j-hui/fidget.nvim",
  },

  config = function()
    local cmp = require('cmp')
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    require("fidget").setup({})
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "ts_ls",
        "tailwindcss",
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim", "it", "describe", "before_each", "after_each" },
                }
              }
            }
          }
        end,
      }
    })

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ["<C-Space>"] = cmp.mapping.complete(),
        ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
        { name = 'buffer' },
      })
    })

    vim.diagnostic.config({
      -- update_in_insert = true,
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Go to definition" })
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, { desc = "Go to declaration" })
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, { desc = "Go to references" })
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, { desc = "Go to implementation" })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "Hover documentation" })
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, { desc = "Rename symbol" })
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "Code action" })
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, { desc = "Previous diagnostic" })
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, { desc = "Next diagnostic" })
    vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, { desc = "Show diagnostic" })
  end
}
