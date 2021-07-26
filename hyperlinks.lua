-- ^~?/|(/[\w_-]+)+(?:\d+)?

return {
	-- Linkify things that look like URLs
	-- This is actually the default if you don't specify any hyperlink_rules
	{
		regex = '\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b',
		format = '$0',
	},

	-- linkify email addresses
	{
		regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
		format = 'mailto:$0',
	},

	-- file:// URI
	{
		regex = '\\bfile://\\S*\\b',
		format = '$0',
	},
	{ -- file:line format
		regex = [[\b^~?/|(/[\w_-]+)+(?::\d+)?\b]],
		format = '$0',
	},
}
