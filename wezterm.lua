local helpers   = require('helpers')
local maps      = require('keymaps')
local theme     = require('themes')

local config = {}

helpers.apply_to(config)
maps.set_leader_key(config, 'b')
maps.set_keys(config)
theme.apply_colorscheme(config, 'light')

return config
