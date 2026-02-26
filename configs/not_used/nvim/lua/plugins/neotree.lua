return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      close_if_last_window = true,
      hide_root_node = true,
      popup_border_style = "rounded",
      source_selector = {
        winbar = true,
        sources = {
          {
            source = "filesystem",
            display_name = " 󰷋 Files ",
          },
          {
            source = "buffers",
            display_name = " 󱇨 Buffers ",
          },
          {
            source = "git_status",
            display_name = " 󰸩 Git status ",
          },
        },
        content_layout = "center",
      },
      filesystem = {
        filtered_items = {
          visible = false,
          always_show = {
            ".gitignore",
            ".venv",
            ".ssh",
            ".config",
          },
          always_show_by_pattern = {
            ".env*",
          },
        },
      },
      default_component_configs = {
        indent = {
          padding = 2,
          last_indent_marker = "│",
        },
        icon = {
          folder_closed = " ",
          folder_open = " ",
          folder_empty = " ",
          folder_empty_open = " ",
        },
        modified = {
          symbol = " ",
        },
        git_status = {
          symbols = {
            added     = " ",
            deleted   = " ",
            modified  = " ",
            renamed   = " ",
            untracked = " ",
            ignored   = " ",
            unstaged  = " ",
            staged    = " ",
            conflict  = " ",
          },
        },
        symlink_target = {
          enabled = true,
          text_format = " ➛ %s",
        },
        file_size = {
          enabled = true,
          width = 12,
          required_width = 32
        },
        last_modified = {
          enabled = true,
          width = 8,
          required_width = 48,
          format = "%d.%m.%y",
        },
      },
      renderers = {
        directory = {
          { "indent" },
          { "icon" },
          { "current_filter" },
          {
            "container",
            content = {
              { "name", zindex = 10 },
              { "symlink_target", zindex = 10, highlight = "NeoTreeSymbolicLinkTarget", },
              { "clipboard", zindex = 10 },
              { "diagnostics", errors_only = true, zindex = 10, align = "right", hide_when_expanded = true },
              { "git_status", zindex = 10, align = "right", hide_when_expanded = true },
              { "file_size", zindex = 10, align = "right" },
              { "last_modified", zindex = 10, align = "right" },
            },
          },
        },
        file = {
          { "indent" },
          { "icon" },
          {
            "container",
            content = {
              { "name", zindex = 10 },
              { "modified", zindex = 10, align = "left" },
              { "symlink_target", zindex = 10, highlight = "NeoTreeSymbolicLinkTarget" },
              { "clipboard", zindex = 10 },
              { "diagnostics",  zindex = 10, align = "right" },
              { "git_status", zindex = 10, align = "right" },
              { "file_size", zindex = 10, align = "right" },
              { "last_modified", zindex = 10, align = "right" },
            },
          },
        },
      },
      window = {
        position = "float",
        popup = { title = "neo-tree" },
      },
    },
  }
}
