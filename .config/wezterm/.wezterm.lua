local wezterm = require("wezterm")

local font_name = "JetBrainsMono Nerd Font"

local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "azuki_font" }
	return wezterm.font_with_fallback(names, params)
end

return {
	-- Font
	font = font_with_fallback(font_name),
	font_size = 16,

	-- Color Scheme
	color_scheme = "Catppuccin Mocha",

	-- Window
	window_background_opacity = 0.9
}
