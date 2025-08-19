return {
	-- The file explorer
	{
		"stevearc/oil.nvim",
		-- -@module 'oil'
		-- -@type oil.SetupOpts
		opts = {},

		dependencies = { { "echasnovski/mini.icons", opts = {} } },

		lazy = false,
	},

	-- Syntax highlighting and parsing
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- Enable syntax highlighting
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				-- Enable code folding
				indent = { enable = true },
			})
		end,
	},
}
