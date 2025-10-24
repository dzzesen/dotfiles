vim.lsp.config("basepyright", require("lsp.basepyright"))
vim.lsp.enable("basepyright")

vim.lsp.config("ruff", require("lsp.ruff"))
vim.lsp.enable("ruff")

vim.lsp.config("lua_language_server", require("lsp.lua_language_server"))
vim.lsp.enable("lua_language_server")

vim.lsp.config("gdscript", require("lsp.gdscript"))
vim.lsp.enable("gdscript")

vim.lsp.config("ts_ls", require("lsp.ts_ls"))
vim.lsp.enable("ts_ls")

vim.lsp.config("rust_analizer", require("lsp.rust_analizer"))
vim.lsp.enable("rust_analizer")
