-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    -- { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  defaults = { version = false },
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "catppuccin" } },
  ui = {
    size = { width = 0.55, height = 0.90 },
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    backdrop = 100,
    title = "lazy.nvim",
    title_pos = "right",
  },
  -- automatically check for plugin updates
  checker = {
    enabled = true,
    frequency = 86400, -- check for updates every day
  },
})

