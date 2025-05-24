local lspconfig = require("lspconfig")

-- 高亮光标所在变量的所有定义及引用(当前buffer)
local function _doc_highlight(client, bufnr)
	-- 如果语言服务器支持 documentHighlight 功能
	if client.server_capabilities.documentHighlightProvider then
		local group = vim.api.nvim_create_augroup("LspDocumentHighlight", { clear = false })

		vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
			group = group,
			buffer = bufnr,
			callback = vim.lsp.buf.document_highlight,
		})

		vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
			group = group,
			buffer = bufnr,
			callback = vim.lsp.buf.clear_references,
		})
	else
		print("current client does not support ducoment highlight.")
	end
end

-- 通用 on_attach & capabilities
local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

	_doc_highlight(client, bufnr)
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
