local act = require('wezterm').action

local M = {}

function M.set_leader_key(config, key_leader)
  config.leader = { key = key_leader, mods = "CTRL", timeout_milliseconds = 1000 }
end

function M.set_keys(config)
  config.keys = {
    {
      key = "v",
      mods = "LEADER",
      action = act.SplitVertical({ domain = "CurrentPaneDomain" })
    },
    {
      key = "h",
      mods = "LEADER",
      action = act.SplitHorizontal({ domain = "CurrentPaneDomain" })
    },
    {
      key = "1",
      mods = "ALT",
      action = act.ActivatePaneByIndex(0)
    },
    {
      key = "2",
      mods = "ALT",
      action = act.ActivatePaneByIndex(1)
    },
    {
      key = "3",
      mods = "ALT",
      action = act.ActivatePaneByIndex(2)
    },
    {
      key = "4",
      mods = "ALT",
      action = act.ActivatePaneByIndex(3)
    },

    -- Change Tab
    {
      key = "[",
      mods = "CTRL",
      action = act.ActivateTabRelative(-1)
    },
    {
      key = "]",
      mods = "CTRL",
      action = act.ActivateTabRelative(1)
    },

    -- Change Panel
    -- { key = 'LeftArrow', action = act.ActivatePaneDirection 'Left' },
    -- { key = 'RightArrow', action = act.ActivatePaneDirection 'Right' },
    -- { key = 'UpArrow', action = act.ActivatePaneDirection 'Up' },
    -- { key = 'DownArrow', action = act.ActivatePaneDirection 'Down' },

    -- Adjust Pane Size
    {
      key = "LeftArrow",
      mods = "CTRL",
      action = act.AdjustPaneSize({ "Left", 1 })
    },
    {
      key = "DownArrow",
      mods = "CTRL",
      action = act.AdjustPaneSize({ "Down", 1 })
    },
    {
      key = "UpArrow",
      mods = "CTRL",
      action = act.AdjustPaneSize({ "Up", 1 })
    },
    {
      key = "RightArrow",
      mods = "CTRL",
      action = act.AdjustPaneSize({ "Right", 1 })
    },
  }
end

return M
