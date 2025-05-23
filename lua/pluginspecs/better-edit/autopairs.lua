local M = {
	"windwp/nvim-autopairs",
	event = { "BufReadPre", "BufNewFile" },
}

M.config = function()
	require("nvim-autopairs").setup {
		check_ts = true,
		disable_filetype = { "TelescopePrompt", "spectre_panel" },
		ts_config = {
			lua = { "string" }, -- it will not add pair on that treesitter node
			javascript = { "template_string" },
			java = false,    -- don't check treesitter on java
		},
	}
end

return M
