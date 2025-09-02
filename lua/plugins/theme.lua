return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local current_theme = "tokyonight"

      -- Apply Tokyonight normally
      local function apply_tokyonight()
        require("tokyonight").setup({
          style = "storm",
          transparent = false,  -- solid bg for theme
          terminal_colors = true,
          sidebars = { "nvim-tree" },
        })
        vim.cmd("colorscheme tokyonight")
        -- Normal / nvim-tree background
        vim.cmd([[
          hi Normal guibg=#1e1e2e guifg=#c0caf5
          hi NormalNC guibg=#1e1e2e guifg=#c0caf5
          hi NvimTreeNormal guibg=#1e1e2e guifg=#c0caf5
          hi NvimTreeNormalNC guibg=#1e1e2e guifg=#c0caf5
          hi Terminal guibg=#1e1e2e guifg=#c0caf5
        ]])
        current_theme = "tokyonight"
      end

      -- Disable theme but keep transparency
      local function disable_theme_keep_transparency()
        vim.cmd("hi clear")
        vim.cmd([[
          hi Normal guibg=NONE guifg=#c0caf5
          hi NormalNC guibg=NONE guifg=#c0caf5
          hi NvimTreeNormal guibg=NONE guifg=#c0caf5
          hi NvimTreeNormalNC guibg=NONE guifg=#c0caf5
          hi Terminal guibg=NONE guifg=#c0caf5
        ]])
        current_theme = "none"
      end

      -- Function to make lualine transparent (call after toggle)
      local function set_lualine_transparent()
        vim.cmd("hi! LualineNormal guibg=NONE guifg=#c0caf5")
        vim.cmd("hi! LualineInactive guibg=NONE guifg=#c0caf5")
      end

      -- Apply Tokyonight initially
      apply_tokyonight()
      set_lualine_transparent()

      -- Toggle key <leader>ct
      vim.keymap.set("n", "<leader>ct", function()
        if current_theme == "tokyonight" then
          disable_theme_keep_transparency()
        else
          apply_tokyonight()
        end
        set_lualine_transparent()
      end, { desc = "Toggle Tokyonight / Transparent Mode" })
    end,
  }
}

