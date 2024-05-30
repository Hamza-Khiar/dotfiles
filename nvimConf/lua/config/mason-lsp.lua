require('config.lazy-nvim')
require("mason").setup()


local capabilities=require('cmp_nvim_lsp').default_capabilities()
local ts_filetypes= {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
local tailwind_filetypes = {'aspnetcorerazor', 'astro', 'astro-markdown', 'blade', 'clojure', 'django-html', 'htmldjango', 'edge', 'eelixir', 'elixir', 'ejs', 'erb', 'eruby', 'gohtml', 'gohtmltmpl', 'haml', 'handlebars', 'hbs', 'html', 'html-eex', 'heex', 'jade', 'leaf', 'liquid', 'markdown', 'mdx', 'mustache', 'njk', 'nunjucks', 'php', 'razor', 'slim', 'twig', 'stylus', 'sugarss', 'javascript', 'javascriptreact', 'reason', 'rescript', 'typescript', 'typescriptreact', 'vue', 'svelte', 'templ'}


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
    tailwindcss = function (server_name)
        require('lspconfig')[server_name].setup({
                capabilities=capabilities,
                filetypes=tailwind_filetypes
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
