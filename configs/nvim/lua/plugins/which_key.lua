return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    win = {
      no_overlap = false,
      width = { min = 50, max = 50 },
      height = { min = 100, max = 100 },
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      title_pos = "right",
    },
    keys = {
      scroll_down = "<c-j>",
      scroll_up = "<c-k>",
    },
    show_help = false,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
