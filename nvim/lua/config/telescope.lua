require('config.lazy-nvim')

local telescope=require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})

-- find someway to when calling telescope to list colorschemes to apply the colorscheme on cursor to check how it feels, if picked we'll leave it else we return to the previous colorscheme that was before
