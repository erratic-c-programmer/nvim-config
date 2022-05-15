local paths = vim.split(vim.fn.glob("./*"), "\n")

for i, file in pairs(paths) do
  vim.cmd("source " .. file)
end
