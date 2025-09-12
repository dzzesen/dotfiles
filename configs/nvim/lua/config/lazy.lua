require("lazy").setup({
  spec = {
    { import = "plugins.catppuccin_theme" },
    { import = "plugins.which_key" },
  },
  defaults = { version = false },
  install = { colorscheme = { "catppuccin" } },
  ui = {
    size = { width = 100 },
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

