local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.use_fancy_tab_bar = true

config.font = wezterm.font 'MesloLGL Nerd Font Mono'
config.font_size = 14.0

config.colors = {
  foreground = '#fffeff',
  background = '#1f2428',
  
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
    '#cfcc58',
    '#cfcc58',
    '#79b9ff',
    '#b392f1',
    '#55d4dd',
    '#fffeff',
  },
  brights = {
    '#969da5',
    '#df3547',
    '#e1dc27',
    '#e1dc27',
    '#4798f1',
    '#a77df5',
    '#2adbe8',
    '#fffeff',
  },
}

config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CMD',
    action = act.OpenLinkAtMouseCursor,
  },
  {
    event = { Down = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = act.Nop,
  },
 }

return config
