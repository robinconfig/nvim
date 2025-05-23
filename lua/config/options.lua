local options = {
	number = true,
	relativenumber = true,
	showtabline = 2, --always show tabs
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	signcolumn = "yes", -- often used by debugger, vcs plugin, etc. notice!: not all terminal support this feature.
	showmode = true,   -- show current input mode((Normal Replace Insert)) in cmdline
	cursorline = true, -- highlight current row.
	backup = false,
	swapfile = false,
	undofile = true,          -- enable persistent undo
	wrap = true,              -- auto break line when to long.
	termguicolors = true,     -- set terminal gui colors (most terminals support this).
	splitright = true,        -- when use :vsplit file, show it in right window.
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	mouse = "a",
	encoding = "utf-8",
	fileencoding = "utf-8",
	-- termencoding = "utf-8",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.log.levels = vim.log.levels.DEBUG

-- vim.b.fileencoding = "utf-8"

-- disable netrw at the very start of your init.lua
-- 使用nvim-tree替代
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
