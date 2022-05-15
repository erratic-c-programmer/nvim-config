local paths = vim.split(vim.fn.glob("./*"), "\n")

for i, file in pairs(paths) do
  if file ~= "init.lua"
    vim.cmd("source " .. file)
  end
end
