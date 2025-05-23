return function(common)
	require("lspconfig").gopls.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
	})
end
