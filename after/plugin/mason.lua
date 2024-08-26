require('mason').setup({
    ensure_installed = {
        "python-lsp-server",
        "lua-ls"
    },
})

require('mason-lspconfig').setup({
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    lua = {
                        diagnostics = {
                            globals = {"vim"}
                        },
                    },
                }
            })
        end
    },
})

