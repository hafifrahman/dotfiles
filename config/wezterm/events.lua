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

  wezterm.on('update-status', function(window, _)
    local tab = window:active_tab()
    local panes = tab:panes()
    local alt_screen_active = false

    for i = 1, #panes, 1 do
      local pane = panes[i]
      if pane:is_alt_screen_active() then
        alt_screen_active = true
        break
      end
    end

    if alt_screen_active then
      window:set_config_overrides {
        window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
        enable_tab_bar = false,
      }
    else
      window:set_config_overrides {
        window_padding = nil,
        enable_tab_bar = true,
      }
    end
  end)
end

return M
