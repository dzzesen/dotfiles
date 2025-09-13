require("config.bootstrap_lazy")
require("config.mappings")
require("config.lazy")
require("lsp")

vim.cmd.colorscheme "catppuccin"
vim.wo.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰯸 ",
      [vim.diagnostic.severity.WARN] = "󰰮 ",
      [vim.diagnostic.severity.INFO] = "󰰄 ",
      [vim.diagnostic.severity.HINT] = "󰰁 ",
    },
  }
})
local macchiato = require("catppuccin.palettes").get_palette("macchiato")
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = macchiato.base })
