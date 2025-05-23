local function _cb_apply_colorscheme()
	print("All lazy.nvim plugins are loaded.")
	local theme_name = OpenEyes.theme
	local status_ok, _ = pcall(vim.cmd.colorscheme, theme_name)

	if status_ok then
		vim.o.background = OpenEyes.thememode
		vim.g.edge_enable_italic = true
		print(type(vim.log.levels))
		-- vim.notify("Colorscheme '" .. theme_name .. "' applied via VeryLazy event.", vim.log.levels.INFO)
	else
		vim.notify("Failed to apply colorscheme: " .. theme_name, vim.log.levels.ERROR)
		-- set fallback theme.
		-- pcall(vim.cmd.colorscheme, "default")
	end
end


vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = _cb_apply_colorscheme,
})
