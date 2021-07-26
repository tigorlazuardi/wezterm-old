local wezterm = require('wezterm')

require('events')

return {
	leader = { key = 'a', mods = 'CTRL' },
	disable_default_key_bindings = true,
	default_prog = { 'zsh' },
	keys = require('mappings'),
	color_scheme = 'tokyonight',
	font = wezterm.font('FiraCode Nerd Font Mono', { weight = 'Medium' }),
	exit_behavior = 'Close',
	hyperlink_rules = require('hyperlinks'),
	window_background_opacity = 1.0,
	enable_tab_bar = false,
	skip_close_confirmation_for_processes_named = {
		'bash',
		'sh',
		'zsh',
		'fish',
		'tmux',
	},
}
