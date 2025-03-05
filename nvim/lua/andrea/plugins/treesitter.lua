return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
				autotag = { enable = true },
				auto_install = true,
				rainbow = {
					enable = true,
					extended_mode = true,
					max_file_lines = nil,
				},
				ensure_installed = {
					"json",
					"javascript",
					"go",
					"bash",
					"toml",
					"java",
					"rust",
					"css",
					"html",
					"yaml",
					"lua",
					"dockerfile",
					"gitignore",
					"query",
					"sql",
					"typescript",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
