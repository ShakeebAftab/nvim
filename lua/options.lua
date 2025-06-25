require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
--

-- Disable automatic clipboard integration
vim.opt.clipboard = ""

-- Copy operations
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true }) -- Copy current line
vim.api.nvim_set_keymap('v', '<leader>y', '"+yy', { noremap = true, silent = true }) -- Copy selection in visual mode

-- Paste operations (consider using different mappings than <C-v>)
-- <C-v> is normally used for visual block mode in Vim, so overriding it might be confusing

-- Option 1: Keep <C-v> for pasting (but lose visual block)
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-v>', '"+p', { noremap = true, silent = true })

-- Option 2: Use alternative mapping for pasting (preserves <C-v> for visual block)
-- vim.api.nvim_set_keymap('n', '<leader>v', '"+p', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-S-v>', '<C-r>+', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<leader>v', '"+p', { noremap = true, silent = true })

-- Additional useful mappings
vim.api.nvim_set_keymap('n', 'cp', '"+p', { noremap = true, silent = true }) -- Paste after cursor
vim.api.nvim_set_keymap('n', 'cP', '"+P', { noremap = true, silent = true }) -- Paste before cursor

-- Comments

vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', { noremap = false, silent = true })
vim.api.nvim_set_keymap('i', '<C-_>', '<ESC>gcc', { noremap = false, silent = true })

-- Modified visual mode mapping to preserve selection
vim.api.nvim_set_keymap('v', '<C-_>', 'gc`[v`]', { noremap = false, silent = true })
