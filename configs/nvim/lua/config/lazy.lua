require("lazy").setup({
  spec = {
    { import = "plugins.catppuccin" }, -- color theme
    { import = "plugins.whichkey" }, -- key hints
    { import = "plugins.mason" }, -- lsp, linter, formatter manager
    { import = "plugins.treesitter" }, -- highlight, indent https://github.com/nvim-treesitter/nvim-treesitter
    { import = "plugins.diagflow" }, -- diagnostic messages
    { import = "plugins.neotree" }, -- file browser https://github.com/nvim-neo-tree/neo-tree.nvim
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

