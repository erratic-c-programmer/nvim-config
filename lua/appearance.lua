vim.o.termguicolors = true

require('nightfox').setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
  }
})
vim.cmd("colorscheme duskfox")

local spec = require('nightfox.spec').load("duskfox")
vim.cmd("hi FloatermBorder guibg=" .. spec.palette.bg0)
print("hi FloatermBorder guibg=" .. spec.palette.bg0)
