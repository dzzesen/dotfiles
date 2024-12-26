local which_key = require("which-key")

which_key.add({
    { "<leader>u", group = "Utils" },
    { "<leader>um", "<cmd>RenderMarkdown toggle<cr>", desc = "Markdown toggle" },
})
