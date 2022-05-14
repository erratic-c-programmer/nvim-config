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
