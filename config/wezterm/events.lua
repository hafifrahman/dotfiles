local wezterm = require 'wezterm'

local M = {}

function M.setup()
  wezterm.on('gui-startup', function(cmd)
    local screen = wezterm.gui.screens().main
    local width, height = screen.width * 0.5, screen.height * 0.6
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {
      position = { x = (screen.width - width) / 2, y = (screen.height - height) / 2 },
    })

    window:gui_window():set_inner_size(width, height)
  end)
end

return M
