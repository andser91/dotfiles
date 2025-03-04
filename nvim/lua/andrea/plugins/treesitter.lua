return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
				auto_install = true,
			})
		end,
	},
}
