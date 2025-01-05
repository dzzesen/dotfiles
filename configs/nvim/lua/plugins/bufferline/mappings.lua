local which_key = require("which-key")

which_key.add({
    { "<leader>b", group = "Bufferline" },
    {"<c-l>", "<cmd>BufferLineCycleNext<cr>"},
    {"<c-h>", "<cmd>BufferLineCyclePrev<cr>"},
    {"<c-x>", "<cmd>bdelete<cr>"},
    {"<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle pin buffer"},
})
