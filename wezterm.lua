local wezterm = require('wezterm')

return {
	leader = { key = '\\', mods = '' },
	disable_default_key_bindings = true,
	default_prog = { 'zsh' },
	keys = require('mappings'),
	color_scheme = 'tokyonight',
	font = wezterm.font('FiraCode Nerd Font Mono', { weight = 'Medium' }),
	exit_behavior = 'Close',
	skip_close_confirmation_for_processes_named = {
		'bash',
		'sh',
		'zsh',
		'fish',
		'tmux',
	},
}
