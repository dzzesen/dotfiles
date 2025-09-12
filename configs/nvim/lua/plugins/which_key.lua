return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    win = {
      no_overlap = false,
      width = { min = 100, max = 100 },
      height = { min = 20, max = 20 },
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
