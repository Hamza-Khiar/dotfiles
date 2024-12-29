require('config.lazy-nvim')
require("mason").setup()


local capabilities=require('cmp_nvim_lsp').default_capabilities()
local ts_filetypes= {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}



require('mason-lspconfig').setup()

local vue_typescript_plugin = require('mason-registry')
  .get_package('vue-language-server')
  :get_install_path()
  .. '/node_modules/@vue/language-server'
  .. '/node_modules/@vue/typescript-plugin'

require('mason-lspconfig').setup_handlers{
    function (server_name)
        require('lspconfig')[server_name].setup{
            capabilities = capabilities
        }
    end,
    volar=function ()
        require('lspconfig').volar.setup({
            capabilities=capabilities,
            filetypes=ts_filetypes
        })
    end,
   tsserver = function()
      require('lspconfig').tsserver.setup({
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = vue_typescript_plugin,
              languages = {'javascript', 'typescript', 'vue'}
            },
          }
        },
        filetypes = {
          'javascript',
          'javascriptreact',
          'javascript.jsx',
          'typescript',
          'typescriptreact',
          'typescript.tsx',
          'vue',
        },
      })
    end,
}
