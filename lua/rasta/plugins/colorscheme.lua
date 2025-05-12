-- vim.o.background = "light"
--
return {
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		config = function()
			vim.cmd("colorscheme github_dark_default")
			-- vim.cmd("colorscheme github_light_default")
			-- vim.api.nvim_set_hl(0, "Comment", { fg = "#6A9955", italic = true })
		end,
	},

	-- {
	-- 	"Mofiqul/vscode.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd("colorscheme vscode")
	-- 	end,
	-- },
}
