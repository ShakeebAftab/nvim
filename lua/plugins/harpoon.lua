return {
    'ThePrimeagen/harpoon',
    keys = {
        { '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', desc = 'Add File to Harpoon' },
        { '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'Toggle Harpoon Menu' },
        { '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>', desc = 'Navigate to File 1' },
        { '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>', desc = 'Navigate to File 2' },
        { '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>', desc = 'Navigate to File 3' },
        { '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>', desc = 'Navigate to File 4' },
        { '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>', desc = 'Navigate to File 5' },
    },
    config = function()
        require("harpoon").setup({
            global_settings = {
                save_on_toggle = true,  
                save_on_change = true, 
            },
        })
    end,
}
