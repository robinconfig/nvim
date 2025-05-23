vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local log = require('internal.log')

local M = {
	theme = "dawnfox",
	thememode = "light",
	debugmode = false,
	log = log,
}

_G.OpenEyes = M

return M
