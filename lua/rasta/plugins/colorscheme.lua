return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme rose-pine-moon")

		-- Set background to the specified dark color
		vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" }) -- Dark background for normal text
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" }) -- Dark background for floating windows

		-- -- Set background to dark black
		-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" }) -- Dark black background for normal text
		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" }) -- Dark black background for floating windows

		-- Disable comment styling
		-- vim.cmd.hi("Comment gui=none")
	end,
}
