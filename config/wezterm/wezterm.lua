local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.audible_bell = 'Disabled'
config.color_scheme = 'Tokyo Night'
config.default_cursor_style = 'BlinkingBar'
config.default_prog = { 'pwsh.exe', '-NoLogo' }
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.hide_mouse_cursor_when_typing = true
config.enable_tab_bar = false
config.launch_menu = {
  {
    label = 'PowerShell',
    args = { 'pwsh.exe', '-NoLogo' },
  },
  {
    label = 'Command Prompt',
    args = { 'cmd.exe' },
  },
  {
    label = 'Git Bash',
    args = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-i', '-l' },
  },
}
config.max_fps = 120
config.window_background_opacity = 0.85
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

require('events').setup()
require('keys').setup(config)

return config
