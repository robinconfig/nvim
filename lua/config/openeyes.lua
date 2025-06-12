vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local log_module = require('internal.log')

local M = {
	-- theme = "dawnfox",
	theme = "ef-cyprus",
	thememode = "light", -- dark or light
	debugmode = false,
	log = log_module,
}

_G.OpenEyes = M

return M
