local nest = require("nest")

vim.g.mapleader = ";"
nest.applyKeymaps {
	{ "<Left>", "<C-w>h" },
	{ "<Down>", "<C-w>j" },
	{ "<Up>", "<C-w>k" },
	{ "<Right>", "<C-w>l" },
	{ "<S-Left>", "<C-w>v<C-w>h" },
	{ "<S-Down>", "<C-w>s" },
	{ "<S-Up>", "<C-w>s<C-w>k" },
	{ "<S-Right>", "<C-w>v" },
	{ "<C-l>", "<C-o>zz", mode="i"},

	{ "<C-t>", "<Cmd>FloatermToggle<CR>", mode="tn" },
	{ "<Esc>", "<C-\\><C-n>", mode="t" },

	-- special lsp, not inside leader
	{ "K", "<cmd>lua vim.lsp.buf.hover()<CR>" },
	{ "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>" },

	{ "<leader>", {
		{ "l", {  -- lsp
			{ "D", "<cmd>lua vim.lsp.buf.declaration()<CR>" },
			{ "d", "<cmd>lua vim.lsp.buf.definition()<CR>" },
			{ "r", "<cmd>lua vim.lsp.buf.rename()<CR>" },
			{ "a", "<cmd>lua vim.lsp.buf.code_action()<CR>" },
		}}
	}}
}
