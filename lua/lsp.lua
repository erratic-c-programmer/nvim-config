local coq = require "coq"
local servers = { "clangd", "pyright", "tsserver", "rust_analyzer", "hls", "csharp_ls" }
for k, v in pairs(servers) do
	require('lspconfig')[v].setup(
		coq.lsp_ensure_capabilities({
			on_attach = on_attach,
			flags = {
				debounce_text_changes = 150,
			}
		})
	)
end

vim.diagnostic.config({
  virtual_text = false,
})
vim.cmd("autocmd CursorHold * lua vim.diagnostic.open_float { focusable = false }")
vim.cmd("autocmd CursorHoldI * lua vim.diagnostic.open_float { focusable = false }")
