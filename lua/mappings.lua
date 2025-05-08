require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })

map("n", "<leader>a", function() require("harpoon"):list():add() end, { desc = "Harpoon: Add file" })

map("n", "<leader>h", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
  { desc = "Harpoon: Toggle quick menu" })

map("n", "<leader>1", function() require("harpoon"):list():select(1) end, { desc = "Harpoon buffer 1" })
map("n", "<leader>2", function() require("harpoon"):list():select(2) end, { desc = "Harpoon buffer 2" })
map("n", "<leader>3", function() require("harpoon"):list():select(3) end, { desc = "Harpoon buffer 3" })
map("n", "<leader>4", function() require("harpoon"):list():select(4) end, { desc = "Harpoon buffer 4" })
map("n", "<leader>5", function() require("harpoon"):list():select(5) end, { desc = "Harpoon buffer 5" })

-- Telescope grep search
map("n", "<leader>fg", "<cmd> Telescope live_grep <cr>", { desc = "Telescope: Live Grep" })

-- Maintain visual selection after indenting
map("v", ">", ">gv", { desc = "Increase indent (keep selection)" })
map("v", "<", "<gv", { desc = "Decrease indent (keep selection)" })
map("v", "c", "")

-- Auto Complete
map('i', '<A-Space>', '<Cmd>lua require("cmp").complete()<CR>', { noremap = true, silent = true })
