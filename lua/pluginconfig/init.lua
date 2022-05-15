local paths = vim.split(vim.fn.glob("~/.config/nvim/lua/pluginconfig/*"), "\n")

for i, file in pairs(paths) do
  if file ~= "init.lua"
    vim.cmd("source " .. file)
  end
end
