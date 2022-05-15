vim.o.termguicolors = true
 -- ho

require('nightfox').setup({
  options = {
    transparent = false,
    styles = {
      comments = "bold",
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
vim.cmd("hi FloatermBorder guibg=" .. spec.palette.bg1)
print("hi FloatermBorder guibg=" .. spec.palette.bg1)
