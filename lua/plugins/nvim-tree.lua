return  {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{"<leader>b", "<cmd>NvimTreeToggle<cr>", desc = "Open nvim-tree"}	
	},
	config = function()
		require("nvim-tree").setup({
			 update_focused_file = {
                enable = true,
                update_cwd = true,
            },
			 diagnostics = {
                enable = true,
                show_on_dirs = true,

			},
            view = {
                width = 30,
                side = "right",
            },
		})
	end
}
