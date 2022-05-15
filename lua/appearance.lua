vim.o.termguicolors = true

require('nightfox').setup({
  options = {
    transparent = false,
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
