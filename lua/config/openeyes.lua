vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local log_module = require('internal.log')

local M = {
	theme = "dawnfox",
	thememode = "light",
	debugmode = false,
	log = log_module,
}

_G.OpenEyes = M

return M
