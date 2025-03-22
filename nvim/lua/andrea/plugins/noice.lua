return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	opts = {
		presets = {
			bottom_search = false,
		},
		messages = {
			enabled = true,
			view = "mini",
			view_error = "mini",
			view_warn = "mini",
			view_history = "mini",
			view_search = "mini",
		},
		notify = {
			enabled = true,
			view = "mini",
		},
		lsp = {
			message = {
				-- Messages shown by lsp servers
				enabled = true,
				view = "mini",
			},
		},
		views = {
			-- This sets the position for the search popup that shows up with / or with :
			cmdline_popup = {
				position = {
					row = "40%",
					col = "50%",
				},
			},
			mini = {
				-- timeout = 5000, -- timeout in milliseconds
				timeout = vim.g.neovim_mode == "skitty" and 2000 or 5000,
				align = "center",
				position = {
					-- Centers messages top to bottom
					row = "95%",
					-- Aligns messages to the far right
					col = "100%",
				},
			},
		},
	},
}
