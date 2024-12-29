local function setCommandMap(name,command,attributes)
    return vim.api.nvim_create_user_command(name,command,attributes)
end

return setCommandMap
