local M = {
	'nvim-orgmode/orgmode',
	event = 'VeryLazy',
	filetype = { 'org' },
	version = "*",
}

function M.config()
	require("orgmode").setup({
	})
end

return M
