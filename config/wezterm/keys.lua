local wezterm = require 'wezterm'
local action = wezterm.action

local M = {}

function M.setup(config)
  config.keys = {
    { key = 'w', mods = 'SHIFT|CTRL', action = action.CloseCurrentTab { confirm = false } },
    { key = ' ', mods = 'CTRL', action = action.SendKey { key = ' ', mods = 'CTRL' } },
    { key = 'l', mods = 'ALT|CTRL', action = action.ShowLauncherArgs { flags = 'LAUNCH_MENU_ITEMS' } },
  }

  return config
end

return M
