local wezterm = require 'wezterm'
local config = wezterm.config_builder()

require('events').setup()
require('keys').setup(config)

config.audible_bell = 'Disabled'
config.color_scheme = 'Ashes (dark) (terminal.sexy)'
config.default_cursor_style = 'BlinkingBar'
config.default_prog = { 'pwsh.exe', '-NoLogo' }
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.hide_mouse_cursor_when_typing = true
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
config.window_decorations = 'RESIZE|INTEGRATED_BUTTONS'
config.window_close_confirmation = 'NeverPrompt'

return config
