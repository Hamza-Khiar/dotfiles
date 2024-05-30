require('config.lazy-nvim')


local cmp=require('cmp')
local luasnip=require('luasnip')

luasnip.config.setup{}

cmp.setup({
    snippet={
        expand=function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping=cmp.mapping.preset.insert{
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<Tab>']=cmp.mapping.confirm({select=true}),
        ['<CR>']=cmp.mapping.confirm({select=true})
    },
    completion = { completeopt = 'menu,menuone,noinsert' },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
    },
})
