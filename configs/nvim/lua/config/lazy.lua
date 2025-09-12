require("lazy").setup({
  spec = {
    { import = "plugins.catppuccin_theme" },
  },
  defaults = { version = false },
  install = { colorscheme = { "catppuccin" } },
  ui = {
    size = { width = 0.55, height = 0.90 },
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
