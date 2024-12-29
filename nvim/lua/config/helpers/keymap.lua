local function setKeyMap(mapleader,mode,lhs,rhs,options)
    vim.g.mapleader= mapleader
	return 	vim.keymap.set(mode,lhs,rhs,options)
end

return setKeyMap
