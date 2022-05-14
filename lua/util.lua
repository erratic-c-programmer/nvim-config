local M = {}

-- really simple ft autocmd constructor
function M.ft_autocmd(ft, options)
	local s = "autocmd FileType " .. ft .. " setlocal "
	for i, v in ipairs(options) do
		s = s .. v .. " "
	end
	return s
end

function M.ft_autocmd_(ft, options)
	vim.cmd(M.ft_autocmd(ft, options))
end

-- convenience function to construct indentation-setting autocmd fragment
function M.au_indent(lvl)
	m = {}
	for i, v in ipairs({ "tabstop", "shiftwidth", "softtabstop" }) do
		m[i] = v .. "=" .. lvl
	end
	return m
end

return M
