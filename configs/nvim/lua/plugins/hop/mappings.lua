vim.keymap.set("n", "f", function() require("hop").hint_words({current_line_only=true}) end)
vim.keymap.set("n", "F", function() require("hop").hint_words() end)
vim.keymap.set("v", "f", function() require("hop").hint_words({current_line_only=true}) end)
vim.keymap.set("v", "F", function() require("hop").hint_words() end)
