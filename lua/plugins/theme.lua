return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "moon",       -- Options: 'moon', 'dawn', 'dusk'
      dark_variant = "moon",  -- Options: 'moon', 'dawn', 'dusk'
      disable_background = true, -- Set to true to disable background color
      highlight_groups = {    -- Customize specific highlight groups
        Normal = { fg = "#e0def4", bg = "#191724" },
        Comment = { fg = "#6e6a86", italic = true },
      },

      styles = {
        italic = false,
        transparency = true,
      }
    })
    vim.cmd("colorscheme rose-pine")
  end,

}
