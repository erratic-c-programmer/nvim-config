u = require("util")

vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 1
vim.o.hidden = true
vim.o.mouse = "a"
vim.o.number = true
vim.o.shortmess = "c"
vim.o.signcolumn = "yes:2"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.undofile = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true

-- autocmds
u.ft_autocmd_("html", u.au_indent(2))
u.ft_autocmd_("javascript", u.au_indent(4))
u.ft_autocmd_("typescript", u.au_indent(2))
u.ft_autocmd_("css", u.au_indent(2))
u.ft_autocmd_("haskell", u.au_indent(2))
u.ft_autocmd_("rst", u.au_indent(3))
-- this special one
vim.cmd("autocmd BufWritePost ~/.config/nvim/* :silent exec '!git add .; git commit -m \"$(date)\"; git push'")

vim.g.coq_settings = { display = { pum = { fast_close = false }}}
