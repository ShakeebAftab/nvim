return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = false, -- disable built-in
				},
			},
			panel = { enabled = true },
		})

		-- Smart <Tab> mapping in insert mode
		vim.keymap.set("i", "<Tab>", function()
			local copilot = require("copilot.suggestion")
			if copilot.is_visible() then
				copilot.accept()
			else
				return "<Tab>"
			end
		end, { expr = true, silent = true })
	end,
}
