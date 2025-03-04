return {
	"arnamak/stay-centered.nvim",
	config = function()
		local stay = require("stay-centered").setup({
			skip_filetypes = {},
			enabled = true,
			allow_scroll_move = true,
			disable_on_mouse = true,
		})
	end,
}
