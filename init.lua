--- 入口配置代码尽可能简短, 方便注释掉以便测试临时代码.
vim.log.levels = {
	TRACE = 0,
	DEBUG = 1,
	INFO = 2,
	WARN = 3,
	ERROR = 4,
	OFF = 5,
}
require("config")
require("config.lazy")
Log = require("internal.log")

require("config.options")
require("config.usercommand")
require("config.keymap")
require("config.autocmd")
