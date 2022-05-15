local paths = vim.split(vim.fn.glob("~/.config/nvim/lua/*nvim"), "\n")

for i, file in pairs(paths) do
  vim.cmd("source " .. file)
end
