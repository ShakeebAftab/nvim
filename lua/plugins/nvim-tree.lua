return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			disable_netrw = true,
			hijack_netrw = true,
			view = {
				width = 35,
				side = "left",
			},
			renderer = {
				group_empty = true,
				root_folder_label = false,
			},
			filters = {
				dotfiles = false,
				custom = { "node_modules", ".git", "package-lock.json", "dist", "lazy-lock.json" }, -- Add folder or file names that you want to remove from the tree
			},
			git = {
				enable = true,
				ignore = false,
			},
			update_focused_file = {
				enable = true,
				update_root = true,
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Explorer" })
		vim.keymap.set("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", { desc = "Focus Explorer" })
	end,
}
