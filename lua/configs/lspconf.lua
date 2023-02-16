require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"clangd",
		"eslint",
		"emmet_ls",
		"tsserver",
		"pyright",
		"tailwindcss",
	}
})
