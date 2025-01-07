local which_key = require("which-key")
local resession = require("resession")
local hop = require("hop")
local builtin = require("telescope.builtin")

which_key.add({
    { "<leader>s", group = "Session" },
    { "<leader>ss", resession.save, desc = "Save" },
    { "<leader>sl", resession.load, desc = "Load" },
    { "<leader>sd", resession.deleta, desc = "Delete" },

    { "<leader>u", group = "Utils" },
    { "<leader>ul", "<cmd>LoremIpsum words 42 10<cr>", desc = "LoremIpsum" },

    { 
        mode = { "n" },
        { "<leader>u", group = "Utils" },
        { "<leader>uc", "<Plug>kommentary_line_default", desc = "Comment" },
    },
    { 
        mode = { "x" },
        { "<leader>u", group = "Utils" },
        { "<leader>uc", "<Plug>kommentary_visual_default", desc = "Comment" },
    },

    { "<leader>u", group = "Utils" },
    { "<leader>um", "<cmd>RenderMarkdown toggle<cr>", desc = "Markdown toggle" },

    { "f", function() hop.hint_words({current_line_only=true}) end },
    { "F", function() hop.hint_words() end },

    { "<leader>t", group = "Telescope" },
    { "<leader>tf", builtin.find_files, desc="Find File" },
    { "<leader>tg", builtin.live_grep, desc="Live Grep" },
    { "<leader>tb", builtin.buffers, desc="Buffers" },
    { "<leader>th", builtin.help_tags, desc="Help Tags" },

    {
        "<leader>n",
        "<cmd>Neotree<cr>",
        desc = "Neotree",
        icon = MiniIcons.get("filetype", "neo-tree")
    },

    { "<leader>b", group = "Bufferline" },
    {"<c-l>", "<cmd>BufferLineCycleNext<cr>"},
    {"<c-h>", "<cmd>BufferLineCyclePrev<cr>"},
    {"<c-x>", "<cmd>bdelete<cr>"},
    {"<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle pin buffer"},

    { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy" },

    { "H", "^", desc = "To beginning of line" },
    { "L", "$", desc = "To ending of line" },
})
