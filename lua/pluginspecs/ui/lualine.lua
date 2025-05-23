local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"AndreM222/copilot-lualine",
	},
}

function M.config()
	require("lualine").setup {
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			ignore_focus = { "NvimTree" },
		},
		sections = {
			lualine_a = {},
			lualine_b = { "branch", "diff", "diagnostics", "lsp_status", },
			lualine_c = { { "filename", file_status = true, newfile_status = true, path = 3, }, },
			lualine_x = { "copilot", "searchcount", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		extensions = { "quickfix", "man", "fugitive" },
	}
end

return M
