local M = {}

function M.apply_colorscheme(config, color)
  -- My list of best themes
  -- Dark: Batman
  -- Light: iceberg-light, Piatto Light, Raycast_Light

  if color == 'dark' then
    config.color_scheme = 'Batman'
  else
    config.color_scheme = 'Raycast_Light'
  end
end

return M
