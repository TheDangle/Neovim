return {
	"itmecho/neoterm.nvim",

	config = function()
		-- Setup global config
		require("neoterm").setup({
			clear_on_run = true, -- Run clear command before user specified commands
			position = "bottom", -- Position of the terminal window: fullscreen (0), top (1), right (2), bottom (3), left (4), center (5) (string or integer value)
			noinsert = false, -- Disable entering insert mode when opening the neoterm window
			width = 0.5, -- Width of the terminal window (percentage, ratio, or range between 0-1)
			height = 0.5, -- Height of the terminal window (percentage, ratio, or range between 0-1)
		})

		local neoterm = require("neoterm")

		neoterm.open()
		-- Override global config on a specific open call
		neoterm.open({ position = "bottom", noinsert = false, width = 0.7, height = 0.2 })
		neoterm.close()
		neoterm.toggle()
		neoterm.run("ls")
		-- Control whether or not the screen is cleared before running the command
		neoterm.run("ls", { clear = false })
		neoterm.rerun()
		neoterm.exit()
	end,
}
