-- Relative Line Numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Split Window
vim.api.nvim_set_keymap('n', '<C-s>', ':vsplit<CR>', { noremap = true, silent = true })

-- Window Movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Adjust window width with left and right arrow keys
vim.api.nvim_set_keymap('n', '<Left>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<C-w>>', { noremap = true, silent = true })

-- Set tab settings
vim.opt.tabstop = 2        -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2     -- Number of spaces for autoindent
vim.opt.softtabstop = 2    -- Number of spaces for tab in insert mode
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart autoindenting
