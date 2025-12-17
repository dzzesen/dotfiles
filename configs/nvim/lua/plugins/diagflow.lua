return {
    "dgagn/diagflow.nvim",
    event = "LspAttach",
    opts = {
      enable = true,
      max_width = 40,
      format = function(diagnostic)
        return diagnostic.source .. ": " .. diagnostic.message
      end,
      scope = "line",
      placement = "top",
      toggle_event = { "InsertEnter", "InsertLeave" },
      border_chars = {
        top_left = "╭",
        top_right = "╮",
        bottom_left = "╰",
        bottom_right = "╯",
        horizontal = "─",
        vertical = "│"
      },
      show_borders = true,
    },
}
