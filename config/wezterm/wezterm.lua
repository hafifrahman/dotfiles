local wezterm = require 'wezterm'
local config = wezterm.config_builder()

require('events').setup()
require('keys').setup(config)

config.automatically_reload_config = true
config.color_scheme = 'Tokyo Night'
config.default_cursor_style = 'BlinkingBar'
config.default_prog = { 'pwsh.exe', '-NoLogo' }
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

return config
