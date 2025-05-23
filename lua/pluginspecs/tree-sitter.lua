--- 语法高亮

local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"go",
			"html",
			"javascript",
			"json",
			"kotlin",
			"lua",
			"python",
			"query",
			"rust",
			"sql",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
	},
}

function M.config(_, opts)
	local treesitter_config = require("nvim-treesitter.configs")
	treesitter_config.setup({
		ensure_installed = opts.ensure_installed,
		highlight = { enable = true },
		indent = { enable = true },
		autopairs = { eable = true },
	})
end

return M
