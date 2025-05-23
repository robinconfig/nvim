local function _cb_apply_colorscheme()
	local theme_name = _G.OpenEyes.theme
	local status_ok, _ = pcall(vim.cmd.colorscheme, theme_name)

	if status_ok then
		vim.o.background = OpenEyes.thememode
		vim.g.edge_enable_italic = true
		vim.notify("current colorscheme: " .. theme_name, vim.log.levels.INFO)
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
