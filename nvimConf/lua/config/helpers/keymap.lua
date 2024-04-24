vim.g.mapleader= " "
local function setKeyMap(mode,lhs,rhs,options)
	return 	vim.keymap.set(mode,lhs,rhs,options)
end

return setKeyMap
