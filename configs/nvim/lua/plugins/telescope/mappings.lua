local which_key = require("which-key")
local builtin = require("telescope.builtin")

which_key.add(
    {
        { "<leader>t", group = "Telescope" },
        { "<leader>tf", builtin.find_files, desc="Find File" },
        { "<leader>tg", builtin.live_grep, desc="Live Grep" },
        { "<leader>tb", builtin.buffers, desc="Buffers" },
        { "<leader>th", builtin.help_tags, desc="Help Tags" },
    }
)
