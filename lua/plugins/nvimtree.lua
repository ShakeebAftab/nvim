return {
    'kyazdani42/nvim-tree.lua',
    keys = {
        { '<leader>e', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
    },
    config = function()
        require('nvim-tree').setup({
		view = {
			debounce_delay = 0
		},
		renderer = { root_folder_label = false },
		filters = {
			dotfiles = true,
			custom = { '.git', 'node_modules' }
		}
	})
    end,
}
