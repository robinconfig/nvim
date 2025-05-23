return function(common)
	require("lspconfig").lua_ls.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				diagnostics = { globals = { "vim" } },
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
				},
				telemetry = { enable = false },
			},
		},
	})
end
