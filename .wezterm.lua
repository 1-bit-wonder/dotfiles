local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'catppuccin-mocha'
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9
config.window_decorations = "NONE"

return config
