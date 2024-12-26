local hop = require("hop")
vim.keymap.set("", "f", function() hop.hint_words({current_line_only=true}) end)
vim.keymap.set("", "F", function() hop.hint_words() end)
