return function(common)
	require("lspconfig").ts_ls.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
		root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", ".git"),
	})
end
