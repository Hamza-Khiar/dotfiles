require('config.lazy-nvim')
require("mason").setup()


local capabilities=require('cmp_nvim_lsp').default_capabilities()
local filetypes= {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}

require('mason-lspconfig').setup()
require('mason-lspconfig').setup_handlers{
    function (server_name)
        require('lspconfig')[server_name].setup{
            capabilities = capabilities
        }
    end,
    ["volar"]=function ()
        require('lspconfig').volar.setup({
            filetypes=filetypes
        })
    end
}
