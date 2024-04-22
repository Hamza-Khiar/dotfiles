require('config.lazy-nvim')

local servers = {
    clangd={},
    ["css-lsp"]={},
    ["emmet-ls"]={},
}

local capabilities = vim.lsp.protocol.make_client_capabilities()


require('mason-lspconfig').setup({
     handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            -- This handles overriding only values explicitly passed
            -- by the server configuration above. Useful when disabling
            -- certain features of an LSP (for example, turning off formatting for tsserver)
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
})
