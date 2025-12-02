return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			layout_config = {
				height = 1000,
				width = 1000,
        preview_width = 0.7,
			},
		},
	},
}
