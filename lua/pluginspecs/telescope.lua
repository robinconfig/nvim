local M = {
	'nvim-telescope/telescope.nvim',
	-- enable = false,
	-- branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
	}
}


function M.config()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

	require('telescope').setup {
		defaults = {
			layout_strategy = 'bottom_pane',
			layout_config = {
				bottom_pane = {
					preview_width = 0.6, -- 预览窗口宽度占比
					prompt_position = 'bottom',
				},
			},
			borderchars = {
				prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
				preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
		},
	}
end

return M
