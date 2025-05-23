return function(common)
	require("lspconfig").pyright.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "strict",
				},
			},
		},
	})
end
