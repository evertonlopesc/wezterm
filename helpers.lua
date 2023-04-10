local wezterm = require('wezterm')
local M = {}

function M.apply_to(config)
  -- Font
  config.font = wezterm.font("VictorMono Nerd Font")
  config.font_size = 13.0

  -- Tab
  config.hide_tab_bar_if_only_one_tab = true

  -- Scroll
  config.enable_scroll_bar = true
  config.scrollback_lines = 30000

  -- Window Padding
  config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  }
end

return M
