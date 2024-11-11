return {
	-- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.comment").setup()
		require("mini.align").setup()
		require("mini.animate").setup()
		require("mini.diff").setup()
		require("mini.git").setup()
		require("mini.tabline").setup()

		-- require("mini.files").setup()
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
