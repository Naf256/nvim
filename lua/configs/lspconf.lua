require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"rust_analyzer",
		"clangd",
		"eslint",
		"emmet_ls",
		"tsserver",
		"pyright",
		"tailwindcss",
	}
})
