local wezterm = require("wezterm")
local module = {}

local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Macchiato"
	else
		return "Catppuccin Latte"
	end
end

function module.apply_to_config(config)
	wezterm.log_info("applying color_scheme.lua")
	config.color_scheme = scheme_for_appearance(get_appearance())
end

return module
