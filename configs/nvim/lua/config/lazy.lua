require("lazy").setup({
  spec = {
    { import = "plugins.catppuccin_theme" }, -- color theme
    { import = "plugins.which_key" }, -- key hints
    { import = "plugins.mason" }, -- lsp, linter, formatter manager
    { import = "plugins.nvim_treesitter" }, -- highlighting
    { import = "plugins.diagflow" }, -- diagnostic messages
  },
  defaults = { version = false },
  install = { colorscheme = { "catppuccin" } },
  ui = {
    size = { width = 0.7, height = 0.7 },
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

