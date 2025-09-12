vim.lsp.config("pylsp", require("lsp.pylsp"))
vim.lsp.enable("pylsp")

vim.lsp.config("lua_language_server", require("lsp.lua_language_server"))
vim.lsp.enable("lua_language_server")

vim.lsp.config("gdscript", require("lsp.gdscript"))
vim.lsp.enable("gdscript")
