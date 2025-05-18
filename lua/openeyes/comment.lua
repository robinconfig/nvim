local M = {
	"numToStr/Comment.nvim",
	lazy = false,
	dependencies = {
		{
			"JoosepAlviste/nvim-ts-context-commentstring",
			event = "VeryLazy",
		},
	},
}

function M.config()
	-- - C-_> == C-/
	vim.keymap.set({"v", "n", "o", "x"}, "<C-_>", function()
		local count = vim.v.count
		vim.cmd.norm((count > 0 and count or "") .. "gcc")
	end
	)

	vim.g.skip_ts_context_commentstring_module = true
	---@diagnostic disable: missing-fields
	require("ts_context_commentstring").setup {
		enable_autocmd = false,
	}

	require("Comment").setup {
		pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
	}
end

return M
