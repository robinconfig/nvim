--
-- 使用Lazy.nvim来管理插件
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{
			"nvim-lua/plenary.nvim",
			lazy = false,
			priority = 1000, -- 确保优先加载
		},
		{ import = "pluginspecs" },
		-- { import = "pluginspecs.utils" },
		{ import = "pluginspecs.ui" },
		{ import = "pluginspecs.better-edit" },
		{ import = "pluginspecs.note" },
		{ import = "pluginspecs.program" },
		{ import = "pluginspecs.small-tools" },
	},
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})


-- OpenEyes.log.info("hello, Robin")
-- OpenEyes.log.error("hello, Robin")
