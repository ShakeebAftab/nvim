-- autocmds.lua
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local group = augroup("UserConfig", {})

-- Highlight yanked text
autocmd("TextYankPost", {
  group = group,
  callback = function() vim.highlight.on_yank() end,
})

