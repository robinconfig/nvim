local M = {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = 'super-tab' },

		appearance = {
			nerd_font_variant = 'mono'
		},

		completion = { documentation = { auto_show = false } },

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}

function M.config()
	require('blink.cmp').setup({
		sources = {
			per_filetype = {
				org = { 'orgmode' }
			},
			providers = {
				orgmode = {
					name = 'Orgmode',
					module = 'orgmode.org.autocompletion.blink',
					fallbacks = { 'buffer' },
				},
			},
		},
	})
end

return M
