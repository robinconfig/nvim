local opts = { noremap = true, silent = true }

-- 打开配置目录
-- vim.keymap.set('c', 'oc', 'OpenConfig')

-- 拷贝当前选中文本到系统粘贴板
vim.keymap.set({ "v" }, "<leader>y", "\"+y")


------------------------------ Window操作 ---------------------------------------------------

-- 使用Control+h/k/j/l在neovim window之间移动
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)


------------------------------ Buffer操作 ---------------------------------------------------

-- 使用Shift-Tab循环切换Buffer
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>", opts)

-- 关闭当前buffer
--vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>", {silent = false})
vim.keymap.set("n", "<leader>bc", ":bd<CR>")


------------------------------ 文本操作 -----------------------------------------------------
-- virtual模式下可以实现块上下移动
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<Up>", ":m '<-2<CR>gv=gv")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--paste in virtual/select mode, do not copy the selected text.
vim.keymap.set("x", "p", [["_dP]])

-- 格式化代码
vim.keymap.set("n", "<C-A-l>", "<cmd>lua vim.lsp.buf.format()<CR>", { silent = false })
