require("lazy").setup({
  spec = {
    { import = "plugins.catppuccin" }, -- color theme
    { import = "plugins.whichkey" }, -- key hints
    { import = "plugins.mason" }, -- lsp, linter, formatter manager
    { import = "plugins.treesitter" }, -- highlight, indent https://github.com/nvim-treesitter/nvim-treesitter
    { import = "plugins.diagflow" }, -- diagnostic messages
    { import = "plugins.neotree" }, -- file browser https://github.com/nvim-neo-tree/neo-tree.nvim
    { import = "plugins.markdown" }, -- markdown render https://github.com/MeanderingProgrammer/render-markdown.nvim
    { import = "plugins.blinkcmp" }, -- complitions support https://github.com/Saghen/blink.cmp
    { import = "plugins.conform" }, -- formatter https://github.com/stevearc/conform.nvim
    { import = "plugins.telescope" }, -- fuzzy finder https://github.com/nvim-telescope/telescope.nvim
    { import = "plugins.gitsigns" }, -- git buffer integration https://github.com/lewis6991/gitsigns.nvim
    { import = "plugins.indent-blankline" }, -- adds indentation guides https://github.com/lukas-reineke/indent-blankline.nvim
    { import = "plugins.lualine" }, -- statusline https://github.com/nvim-lualine/lualine.nvim
    { import = "plugins.treesitter-context" }, -- code context https://github.com/nvim-treesitter/nvim-treesitter-context
    { import = "plugins.krust" }, -- Rust diagnostics https://github.com/alexpasmantier/krust.nvim
    { import = "plugins.trouble" }, -- List of diagnostics https://github.com/alexpasmantier/krust.nvim
  },
  defaults = { version = false },
  install = { colorscheme = { "catppuccin" } },
  ui = {
    size = { width = 0.5, height = 0.8 },
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    backdrop = 100,
    title = "lazy.nvim",
    title_pos = "right",
  },
  checker = {
    enabled = true,
    frequency = 86400, -- check for updates every day
  },
})

