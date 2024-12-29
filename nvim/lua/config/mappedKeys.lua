local setKeyMap=require("config.helpers.keymap");
local setCommandMap=require('config.helpers.command_map');
setKeyMap(" ",'n',"<leader>fs",vim.cmd.Ex,{}) -- opens Netrw Explorer

-- i wanna set a command where i type :listHelperFiles it maps into the equivalent of :echo getcompletion('*.txt','help')

setCommandMap("ListHelperFiles","echo getcompletion('*.txt','help')",{})
