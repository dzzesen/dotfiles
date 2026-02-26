return {
	cmd = { "pylsp" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" },
	settings = {
		pylsp = {
			plugins = {
				mypy = {
					enabled = true,
					live_mode = true,
					strict = false,
				},
        pycodestyle = { enabled = false },
        pyflakes = { enabled = false },
			},
		},
	},
}
