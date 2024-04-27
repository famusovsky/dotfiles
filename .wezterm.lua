local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.font = wezterm.font 'MesloLGL Nerd Font Mono'
config.font_size = 14.0

config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_thickness = "200%"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = true

config.tab_max_width = 36
config.tab_bar_at_bottom = true

config.colors = {
  foreground = '#fffeff',
  background = '#1f2428',
  cursor_bg = '#d1d5da',
  cursor_border = '#fffeff',
  
  tab_bar = {
    background = '#333333',

    active_tab = {
      bg_color = '#1f2428',
      fg_color = '#fffeff',
    },
  },
     
  ansi = {
    '#969da5',
    '#ed5c6c',
    '#5ff967',
    '#cfcc58',
    '#79b9ff',
    '#b392f1',
    '#55d4dd',
    '#fffeff',
  },
  brights = {
    '#969da5',
    '#df3547',
    '#34fa3e',
    '#e1dc27',
    '#4798f1',
    '#a77df5',
    '#2adbe8',
    '#fffeff',
  },
}

config.keys = {
  {
    key = 'P',
    mods = 'SHIFT|CMD',
    action = wezterm.action.ActivateCommandPalette,
  },
  {
    key = 'Enter',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal,
  },
  {
    key = 'Enter',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitVertical,
  },
  {
    key = 'W',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'F',
    mods = 'SHIFT|CMD',
    action = wezterm.action.ToggleFullScreen,
  },
}
 
return config
