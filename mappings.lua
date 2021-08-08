local wezterm = require('wezterm')

---create key with ctrl+shift modifier
---@param key string
---@param action table
---@return table
local function control_shift(key, action)
	return {
		key = key,
		mods = 'CTRL|SHIFT',
		action = action,
	}
end

local function control_alt(key, action)
	return {
		key = key,
		mods = 'CTRL|ALT',
		action = action,
	}
end

local function control(key, action)
	return {
		key = key,
		mods = 'CTRL',
		action = action,
	}
end

local function shift(key, action)
	return {
		key = key,
		mods = 'SHIFT',
		action = action,
	}
end

local function leader(key, action)
	return {
		key = key,
		mods = 'LEADER',
		action = action,
	}
end

return {
	shift('Insert', wezterm.action({ PasteFrom = 'PrimarySelection' })),
	control('Insert', wezterm.action({ CopyTo = 'PrimarySelection' })),
	control_shift('v', wezterm.action({ PasteFrom = 'Clipboard' })),
	control_shift('c', wezterm.action({ CopyTo = 'Clipboard' })),
	leader('w', wezterm.action({ CloseCurrentPane = { confirm = false } })),
	control('+', 'IncreaseFontSize'),
	control('_', 'DecreaseFontSize'),
	leader('[', wezterm.action({ SplitVertical = { domain = 'CurrentPaneDomain' } })),
	leader(']', wezterm.action({ SplitHorizontal = { domain = 'CurrentPaneDomain' } })),
	leader('h', wezterm.action({ ActivatePaneDirection = 'Left' })),
	leader('j', wezterm.action({ ActivatePaneDirection = 'Down' })),
	leader('k', wezterm.action({ ActivatePaneDirection = 'Up' })),
	leader('l', wezterm.action({ ActivatePaneDirection = 'Right' })),
}
