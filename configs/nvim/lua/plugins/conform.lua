return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format", "ruff_organize_imports" },
      javascript = { "eslint_d" },
      rust = { "clippy" },
		},
	},
}
