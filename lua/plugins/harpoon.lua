return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" }, -- <---- this is required
    keys = {
      { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Harpoon Add File" },
      { "<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Toggle Menu" },
      { "<leader>1", function() require("harpoon.ui").nav_file(1) end, desc = "Harpoon File 1" },
      { "<leader>2", function() require("harpoon.ui").nav_file(2) end, desc = "Harpoon File 2" },
      { "<leader>3", function() require("harpoon.ui").nav_file(3) end, desc = "Harpoon File 3" },
      { "<leader>4", function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon File 4" },
      { "<leader>5", function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon File 5" },
    },
    config = function()
      require("harpoon").setup({
        menu = { width = 50 },
      })
    end,
  }
}

