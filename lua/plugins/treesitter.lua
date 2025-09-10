return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"python",
				"rust",
				"typescript",
				"tsx",
				"javascript",
				"html",
				"css",
				"scss",
				"json",
				"graphql",
				"markdown",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true, -- auto install missing parsers
		})
	end,
}
