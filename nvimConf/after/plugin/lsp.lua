local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer',
  'clangd',
  'unocss',
  'cssls',
  'dockerls',
  'emmet_ls',
  'html',
  'jsonls',
  --'julials',
  'ltex',
  'lua_ls',
  'prosemd_lsp',
  'intelephense',
  'prismals',
  --'svelte',
  'tailwindcss',
  'volar',
  'zls'
})
manage_nvim_cmp = {
  set_sources = 'lsp',
  set_basic_mappings = true,
  set_extra_mappings = false,
  use_luasnip = true,
  set_format = true,
  documentation_window = true,
}
lsp.setup()
local cmp=require('cmp')
local cmp_action=require('lsp-zero').cmp_action()
cmp.setup({
    mapping={
        ['<CR>']=cmp.mapping.confirm({select=true}),
        ['<Tab>'] = cmp_action.tab_complete()
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
  },
})
