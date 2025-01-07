vim.g.kommentary_create_default_mappings = false


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
      "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


local colors = {
    blue   = "#80a0ff",
    cyan   = "#79dac8",
    black  = "#080808",
    white  = "#c6c6c6",
    red    = "#ff5189",
    violet = "#d183e8",
    grey   = "#303030",
}


require("lazy").setup({
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
		opts = {
            options = {
                theme = {
                    normal = {
                        a = { fg = colors.black, bg = colors.violet },
                        b = { fg = colors.white, bg = colors.grey },
                        c = { fg = colors.white },
                    },

                    insert = { a = { fg = colors.black, bg = colors.blue } },
                    visual = { a = { fg = colors.black, bg = colors.cyan } },
                    replace = { a = { fg = colors.black, bg = colors.red } },

                    inactive = {
                        a = { fg = colors.white, bg = colors.black },
                        b = { fg = colors.white, bg = colors.black },
                        c = { fg = colors.white },
                    },
                },
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
                lualine_b = { "branch", "diff", "diagnostic" },
                lualine_c = { { "filename", path = 1 } },
                lualine_x = {},
                lualine_y = { "encoding", "fileformat", "filetype", "progress" },
                lualine_z = {
                    { "location", separator = { right = "" }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { { "filename", path = 2 } },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
            tabline = {},
            extensions = {},
        },
	},
    {
        "stevearc/resession.nvim",
        lazy = false,
        opts = {},
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
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
        lazy = false,
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
            require("lorem").opts({
                sentenceLength = {
                    words_persentence = 10,
                    sentences_per_paragraph = 6,
                },
                comma_chance = 0.2,
                max_commas_per_sentence = 2,
            })
        end
    },
    {
        "b3nj5m1n/kommentary",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { 
                    "lua",
                    "vim",
                    "vimdoc",
                    "markdown",
                    "markdown_inline",
                    "html",
                    "python",
                },
                sync_install = true,
                auto_install = true,
                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false,
                },
            })
            vim.cmd("TSUpdate")
        end
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
        opts = {},
    },
})


require("mini.icons").setup()


local resession = require("resession")


local function get_session_name()
    local name = vim.fn.getcwd()
    local branch = vim.trim(vim.fn.system("git branch --show-current"))
    if vim.v.shell_error == 0 then
        return name .. branch
    else
        return name
    end
end


local function save_session()
    resession.save(get_session_name(), { dir = "dirsession", notify = false })
end

local function load_last_session()
    if vim.fn.argc(-1) == 0 then
        name = get_session_name()
        resession.load(name, { dir = "dirsession", silence_errors = true })
    end
end

vim.api.nvim_create_autocmd("VimLeavePre", { callback = save_session })
vim.api.nvim_create_autocmd("VimEnter", { callback = load_last_session })
