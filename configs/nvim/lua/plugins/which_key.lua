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
    spec = {
      { mode = { "n", "v" },
        { "g", group = "goto" },
        { "<leader>t", group = "Tools", icon = "󱁤 " },
        { "<leader>tl", "<cmd>Lazy<cr>", desc = "Lazy.nvim (plugin manager)", icon = " " },
	{
          "<leader>w",
          group = "Windows",
          proxy = "<c-w>",
          expand = function()
            return require("which-key.extras").expand.win()
          end,
        },
      },
    },
  },
}
