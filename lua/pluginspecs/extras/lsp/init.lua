local lspconfig = require("lspconfig")

-- 通用 on_attach & capabilities（你也可以加入 cmp_nvim_lsp 配合使用）
local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- 导出供子模块使用
local common = {
	on_attach = on_attach,
	capabilities = capabilities,
}

-- 载入各语言配置
require("pluginspecs.extras.lsp.lua_ls")(common)
require("pluginspecs.extras.lsp.gopls")(common)
require("pluginspecs.extras.lsp.pyright")(common)
require("pluginspecs.extras.lsp.ts_ls")(common)
