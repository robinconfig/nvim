return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		indent = {
			priority = 1,
			enabled = true,      -- enable indent guides
			char = "│",
			only_scope = false,  -- only show indent guides of the scope
			only_current = false, -- only show indent guides in the current window
			hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
		},
		scope = {
			enabled = true, -- enable highlighting the current scope
			priority = 200,
			char = "│",
			underline = false,   -- underline the start of the scope
			only_current = false, -- only show scope in the current window
			hl = "SnacksIndentScope", ---@type string|string[] hl group for scopes
		},
	},
}
