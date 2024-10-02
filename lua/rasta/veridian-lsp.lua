-- Import necessary modules
local util = require("lspconfig/util")
local nvim_lsp = require("lspconfig")
local configs = require("lspconfig/configs")

-- Define the root pattern for detecting the project root
local root_pattern = util.root_pattern("veridian.yml", ".git")

-- Check if the veridian LSP is already defined (to avoid redefining it)
if not nvim_lsp.veridian then
	configs.veridian = {
		default_config = {
			cmd = { "veridian" }, -- Path to the Veridian language server executable
			filetypes = { "systemverilog", "verilog" }, -- Supported file types
			root_dir = function(fname)
				local filename = util.path.is_absolute(fname) and fname or util.path.join(vim.loop.cwd(), fname)
				return root_pattern(filename) or util.path.dirname(filename)
			end,
			settings = {}, -- Add additional settings if needed
		},
	}
end

-- Finally, setup the Veridian language server
nvim_lsp.veridian.setup({})
