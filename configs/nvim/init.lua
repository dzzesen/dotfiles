require("globals") 
require("options")
require("configs")
require("mappings")
require("plugins")


local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lspomnifunc")

	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	bufopts["desc"] = "File"
	vim.keymap.set("n", "<leader>ff", function()
		local current_file = vim.api.nvim_buf_get_name(0)
		vim.api.nvim_command("silent !ruff check --select I --fix " .. current_file)
		vim.api.nvim_command("silent !ruff format " .. current_file)
		vim.lsp.buf.format { async = true }
	end, bufopts)
end

require("lspconfig").ruff.setup{
	on_attach = on_attach,
}

local which_key = require("which-key")
which_key.add({
    { "<leader>f", group = "Format" },
})
