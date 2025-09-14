return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		win = {
			no_overlap = false,
			width = { min = 40, max = 40 },
			height = { min = 0, max = 50 },
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
			title_pos = "right",
		},
		plugins = {
			marks = false,
			registers = false,
			spelling = false,
			presets = {
				operators = false,
				motions = false,
				text_objects = false,
				windows = false,
				nav = false,
				z = false,
				g = false,
			},
		},
		keys = {
			scroll_down = "<c-j>",
			scroll_up = "<c-k>",
		},
		show_help = false,
		spec = {
			{
				mode = { "n", "v" },

				{ "g", group = "goto" },
				{ "gg", desc = "Go to first line", icon = " " },
				{ "ge", "G", desc = "Go to last line", icon = " " },
				{ "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition", icon = "  " },

				{ "<leader>t", group = "Tools", icon = "󱁤 " },
				{ "<leader>tl", "<cmd>Lazy<cr>", desc = "Lazy.nvim (plugin manager)", icon = " " },
				{ "<leader>tm", "<cmd>Mason<cr>", desc = "Mason.nvim (package manager)", icon = "󰏖 " },

				{ "<leader>f", "<cmd>Neotree buffers<cr>", desc = "Neo-tree (file browser)", icon = "󱁤 " },

				{ "<leader>a", group = "Actions", icon = " " },
				{ "<leader>af", "<cmd>lua require('conform').format()<cr>", desc = "Format", icon = "󰅰 " },
				{ "<leader>am", "<cmd>RenderMarkdown buf_toggle<cr>", desc = "Toggle markdown", icon = " " },
			},
			{
				mode = { "v" },

				{ "<leader>a", group = "Actions", icon = " " },
				{ "<leader>au", "gu", desc = "Lowercase", icon = "󰬵 " },
				{ "<leader>aU", "gU", desc = "Upercase", icon = "󰬶 " },
				{ "<leader>a<c-u>", "~", desc = "Toggle case", icon = "󰬴 " },
			},
		},
		sort = { "manual" },
	},
}
