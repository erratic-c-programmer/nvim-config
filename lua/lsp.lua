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

vim.cmd("autocmd CursorHold * lua vim.lsp.util.show_line_diagnostics()")
