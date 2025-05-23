vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local log_module = require('internal.log')
print(type(log_module))

vim.g.openeyes = {
	theme = "dawnfox",
	thememode = "light",
	debugmode = false,
	--log = log_module,
}

OpenEyes = vim.g.openeyes
-- OpenEyes.log.set_level("ERROR")
