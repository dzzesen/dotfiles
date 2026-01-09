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
				{ "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition", icon = " " },

				{ "<leader>t", group = "Tools", icon = "󱁤 " },
				{ "<leader>tl", "<cmd>Lazy<cr>", desc = "Lazy.nvim (plugin manager)", icon = " " },
				{ "<leader>tm", "<cmd>Mason<cr>", desc = "Mason.nvim (package manager)", icon = "󰏖 " },

				{ "<leader>f", group = "File browser (Neo-tree)", icon = "󱁤 " },
				{ "<leader>ff", "<cmd>Neotree reveal<cr>", desc = "Files", icon = "󱁤 " },
				{ "<leader>fb", "<cmd>Neotree buffers<cr>", desc = "Buffers", icon = "󱁤 " },
				{ "<leader>fg", "<cmd>Neotree git_status<cr>", desc = "Git status", icon = "󱁤 " },

				{ "<leader>s", group = "Search (Telescope)", icon = " " },
				{ "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Live grep", icon = "󰱼 " },
				{ "<leader>sw", "<cmd>Telescope grep_string<cr>", desc = "Grep word", icon = "󰱼 " },
				{ "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find files", icon = "󰱼 " },
				{ "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics", icon = "󰱼 " },
				{ "<leader>sr", "<cmd>Telescope resume<cr>", desc = "Last search", icon = "󰱼 " },

				{ "<leader>l", group = "LSP actions", icon = " " },
				{
					"<leader>lr",
					"<cmd>lua vim.lsp.stop_client(vim.lsp.get_clients()); vim.cmd('edit')<cr>",
					desc = "Restart LSP",
					icon = " ",
				},
				{
					"<leader>lf",
					"<cmd>lua require('conform').format({ lsp_fallback = true, async = false, timeout_ms = 500 })<cr>",
					desc = "Format",
					icon = "󰅰 ",
				},

				{ "<leader>a", group = "Actions", icon = " " },
				{ "<leader>ac", '"+y', desc = "Copy to clipboard", icon = " " },
				{ "<leader>ap", '"+p', desc = "Past from clipboard", icon = "󰆒 " },
				{ "<leader>am", "<cmd>RenderMarkdown buf_toggle<cr>", desc = "Toggle markdown", icon = " " },
				{ "<leader>ar", group = "Rust actions", icon = " " },
				{ "<leader>ard", "<cmd>Krust<cr>", desc = "Open diagnostics", icon = "󰬌 " },

				{ "<leader>g", group = "Git", icon = " " },
				{ "<leader>gb", "<cmd>Gitsigns blame<cr>", desc = "Open blame", icon = "  " },
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
