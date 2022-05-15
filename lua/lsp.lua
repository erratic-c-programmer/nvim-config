local coq = require "coq"
local servers = { "clangd", "pyright", "tsserver", "rust_analyzer" }
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

vim.cmd("autocmd CursorHold * lua vim.diagnostic.open_float { focusable = false }")
vim.cmd("autocmd CursorHoldI * lua vim.diagnostic.open_float { focusable = false }")
