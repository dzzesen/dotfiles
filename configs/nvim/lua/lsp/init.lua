local registry = require("mason-registry")

local pylsp_pkg = registry.get_package("python-lsp-server")
if not pylsp_pkg:is_installed() then
	pylsp_pkg:install()
	local pip = vim.fn.expand("~/.local/share/nvim/mason/packages/python-lsp-server/venv/bin/pip")
	vim.fn.system({ pip, "install", "pylsp-mypy" })
end

vim.lsp.config("ruff", require("lsp.ruff"))
vim.lsp.enable("ruff")

vim.lsp.config("pylsp", require("lsp.pylsp"))
vim.lsp.enable("pylsp")

vim.lsp.config("lua_language_server", require("lsp.lua_language_server"))
vim.lsp.enable("lua_language_server")

vim.lsp.config("gdscript", require("lsp.gdscript"))
vim.lsp.enable("gdscript")
