local setKeyMap=require ('config.helpers.keymap')
setKeyMap('n',"<leader>fs",vim.cmd.Ex,{}) -- opens Netrw Explorer
setKeyMap({'n','v'},"<C-e>",vim.diagnostic.open_float,{}) -- opens the error in float window

