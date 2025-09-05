local wezterm = require("wezterm")
local color_scheme = require("color_scheme")
local config = {}

config.enable_wayland = false
color_scheme.apply_to_config(config)
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 18
config.scrollback_lines = 30000
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.ssh_domains = {
    {
        name = "vultr.wg_bore.stockholm",
        remote_address = "vultr-stockholm-wg-bore",
        username = "admin",
    },
}

local act = wezterm.action

config.key_tables = {
    search_mode = {
        { key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
        { key = "n",      mods = "CTRL", action = act.CopyMode("NextMatch") },
        { key = "Enter",  mods = "NONE", action = act.CopyMode("PriorMatch") },
        { key = "p",      mods = "CTRL", action = act.CopyMode("PriorMatch") },
        { key = "r",      mods = "CTRL", action = act.CopyMode("CycleMatchType") },
        { key = "u",      mods = "CTRL", action = act.CopyMode("ClearPattern") },
    },
    copy_mode = {
        { key = "Escape", mods = "NONE",  action = act.CopyMode("Close") },
        { key = "h",      mods = "NONE",  action = act.CopyMode("MoveLeft") },
        { key = "j",      mods = "NONE",  action = act.CopyMode("MoveDown") },
        { key = "k",      mods = "NONE",  action = act.CopyMode("MoveUp") },
        { key = "l",      mods = "NONE",  action = act.CopyMode("MoveRight") },
        { key = "H",      mods = "SHIFT", action = act.CopyMode("MoveToStartOfLineContent") },
        { key = "L",      mods = "SHIFT", action = act.CopyMode("MoveToEndOfLineContent") },
        { key = "g",      mods = "NONE",  action = act.CopyMode("MoveToScrollbackTop") },
        { key = "G",      mods = "SHIFT", action = act.CopyMode("MoveToScrollbackBottom") },
        { key = "V",      mods = "SHIFT", action = act.CopyMode({ SetSelectionMode = "Line" }) },
        { key = "v",      mods = "NONE",  action = act.CopyMode({ SetSelectionMode = "Cell" }) },
        { key = "v",      mods = "CTRL",  action = act.CopyMode({ SetSelectionMode = "Block" }) },
        { key = "o",      mods = "NONE",  action = act.CopyMode("MoveToSelectionOtherEnd") },
        { key = "b",      mods = "NONE",  action = act.CopyMode("MoveBackwardWord") },
        { key = "w",      mods = "NONE",  action = act.CopyMode("MoveForwardWord") },
        { key = "e",      mods = "NONE",  action = act.CopyMode("MoveForwardWordEnd") },
        { key = "b",      mods = "CTRL",  action = act.CopyMode("PageUp") },
        { key = "f",      mods = "CTRL",  action = act.CopyMode("PageDown") },
        { key = "d",      mods = "CTRL",  action = act.CopyMode({ MoveByPage = 0.5 }) },
        { key = "u",      mods = "CTRL",  action = act.CopyMode({ MoveByPage = -0.5 }) },
        {
            key = "y",
            mods = "NONE",
            action = act.Multiple({ { CopyTo = "ClipboardAndPrimarySelection" }, { CopyMode = "Close" } }),
        },
    },
}

return config
