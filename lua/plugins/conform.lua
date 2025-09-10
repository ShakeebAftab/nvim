return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", "eslint", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", "eslint", stop_after_first = true },
				typescript = { "prettierd", "prettier", "eslint", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", "eslint", stop_after_first = true },
				json = { "prettierd", "prettier", stop_after_first = true },
				graphql = { "prettierd", "prettier", stop_after_first = true },
				css = { "prettier" },
				scss = { "prettier" },
				html = { "prettier" },
				markdown = { "prettier" },
				yaml = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_format = "fallback",
			},
			prettier = {
				command = "prettier",
				args = { "--config", "~/.prettierrc", "--stdin-filepath", "$FILENAME" },
			},
		})
	end,
}
