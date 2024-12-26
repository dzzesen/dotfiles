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
require("nvim-treesitter.configs").setup({
    ensure_installed = { 
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "html",
        "latex",
        "python",
    },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false,
    },
})
