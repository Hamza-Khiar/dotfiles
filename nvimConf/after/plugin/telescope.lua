local builtin=require('telescope.builtin')
local setKeyMap=require('config.helpers.keymap')
setKeyMap('n','<leader>ff',builtin.find_files,{})
setKeyMap('n','<leader>cg',builtin.git_files,{})
