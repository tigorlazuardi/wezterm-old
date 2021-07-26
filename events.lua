local wezterm = require('wezterm')

wezterm.on('format-window-title', function(_, pane, _, _, _)
	return pane.title
end)
