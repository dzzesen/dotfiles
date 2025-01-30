vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.clipboard = "unnamedplus"

vim.opt.wildignore = vim.opt.wildignore
	+ [["*.o,*.obj,*.dylib,*.bin,*.dll,*.exe,"
    "*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**,*.jpg,*.png,*.jpeg,*.bmp,*.gif,"
    "*.tiff,*.svg,*.ico,*.pyc,*.pkl,*.DS_Store,*.aux,*.bbl,*.blg,*.brf,*.fls,"
    "*.fdb_latexmk,*.synctex.gz,*.xdv"]]

vim.opt.completeopt = vim.opt.completeopt + "popup,noselect"
vim.opt.shortmess = vim.opt.shortmess + "cIs"
vim.opt.pumheight = 10
vim.opt.pumblend = 5
vim.opt.winblend = 0

vim.opt.linebreak = true
vim.opt.showbreak = "->"
vim.opt.number = true
vim.opt.signcolumn = "yes:1"
vim.opt.cursorline = true
vim.opt.colorcolumn = "88"
vim.opt.termguicolors = true
vim.opt.scrolloff = 999
vim.opt.mouse = "a"
vim.opt.showmode = false

vim.opt.autowriteall = true
vim.opt.swapfile = false
vim.opt.history = 1000
vim.opt.undofile = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.matchpairs = vim.opt.matchpairs + "<:>,':',\":\""

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.diffopt = "vertical,filler,closeoff,context:3,internal,indent-heuristic,algorithm:histogram,linematch:60"

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.html", "*.htmldjango" },
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})
