local M = {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("pluginspecs.extras.lsp")
	end,
}

return M
