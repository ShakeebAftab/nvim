return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>ff', ':Telescope find_files<CR>', desc = 'Find Files' },
        { '<leader>fg', ':Telescope live_grep<CR>', desc = 'Live Grep' },
        { '<leader>fb', ':Telescope buffers<CR>', desc = 'List Buffers' },
        { '<leader>fh', ':Telescope help_tags<CR>', desc = 'Help Tags' },
    },
    config = function()
        require('telescope').setup({
            defaults = {
		     find_command = { 
			     'rg', 
			     '--files', 
			     '--glob', 
			     '!.git/*', 
			     '--glob', 
			     '!node_modules/*', 
			     '--glob', 
			     '!*.env' 
		     },
	    },
        })
    end,
}
