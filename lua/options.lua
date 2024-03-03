-- neovim的元访问器说明: https://github.com/glepnir/nvim-lua-guide-zh#%E4%BD%BF%E7%94%A8%E5%85%83%E8%AE%BF%E9%97%AE%E5%99%A8
-- vim使用选项变量: https://harttle.land/2017/01/30/variables-in-vim.html#header-2


-- Set <space> as the leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 显示行号
vim.o.number=true

local tab_width = 4
vim.o.tabstop = tab_width
vim.o.shiftwidth = tab_width
vim.o.expandtab = true
