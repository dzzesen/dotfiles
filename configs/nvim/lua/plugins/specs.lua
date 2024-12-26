require("plugins.options")

local plugin_specs = {
    {
        "rebelot/kanagawa.nvim",
        -- make sure we load this during startup if it is your main colorscheme
        lazy = false,
        -- make sure to load this before all the other start plugins
        priority = 1000,
        config = function()
            vim.cmd("colorscheme kanagawa")
        end,
    },
	{
		"smoka7/hop.nvim",
		opts = { keys = "asdfghjklqwertyuiopzxcvbnm" },
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = lualine_options,
	},
    {
        "stevearc/resession.nvim",
        lazy = false,
        opts = {},
    },
    {
        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
    },
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		opts = {
			window = {
				position = "float",
			},
		},
	},
	{
		"folke/which-key.nvim",
        lazy = true,
		dependencies = { "echasnovski/mini.icons" },
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.6',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
    {
        "derektata/lorem.nvim",
        config = function()
            require("lorem").opts(lorem_options)
        end
    },
    {
        "b3nj5m1n/kommentary",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup(treesitter_options)
            vim.cmd("TSUpdate")
        end
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    },
}

require("lazy").setup(plugin_specs)
