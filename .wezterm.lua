local wezterm = require("wezterm")
local config = wezterm.config_builder()

--General Settings

--Editor
config.font_size = 14
config.line_height = 1.2
config.initial_rows = 24
config.initial_cols = 120
config.enable_tab_bar = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font('Operator Mono')

-- Color Settings
config.colors = {
  split = "#00FFFF",
  cursor_bg = "#7aa2f7",
  cursor_border = "#7aa2f7"
}

-- Cursor Related
config.cursor_thickness = 2
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingBar"

--Key Bindings
config.keys = {
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'd',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'k',
    mods = 'CTRL',
    action = wezterm.action.SendString 'clear\n',
  }
}

return config
