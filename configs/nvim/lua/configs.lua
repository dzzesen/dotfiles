vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal expandtab"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal tabstop=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal softtabstop=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal shiftwidth=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "echo 'Entering a html file'"}
)
