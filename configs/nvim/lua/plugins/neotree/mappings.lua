require("mini.icons").setup()

local which_key = require("which-key")

which_key.add({
    {
        "<leader>n",
        "<cmd>Neotree<cr>",
        desc = "Neotree",
        icon = MiniIcons.get("filetype", "neo-tree")
    },
})
