-- vim.api.nvim_set_keymap('n', '<leader>tt', ':call v:lua.toggle_diagnostics()<CR>',  {noremap = true, silent = true})



local lspconfig = require('lspconfig')
local lsp = require('lsp-zero')
local util = require("lspconfig/util")

lsp.preset('recommended')

lsp.ensure_installed({
        'rust_analyzer',
        'clangd',
        'lua_ls',
        'hls',

})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
        mapping = {
                ['<C-l>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-k>'] = cmp.mapping.select_next_item(cmp_select),
                ['<Tab>'] = cmp.mapping.confirm({ select = true })
        }
})

lsp.setup()
vim.keymap.set("n", '<C-i>', vim.diagnostic.goto_prev)
vim.keymap.set("n", '<C-o>', vim.diagnostic.goto_next)

-- vim.keymap.set("n", '<C-k>', vim.diagnostic.toggle_diagnostics)
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)


lspconfig.rust_analyzer.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "rust" },
        root_dir = util.root_pattern("Cargo.toml"),
        settings = {
                ['rust_analyzer'] = {
                        cargo = {
                                allFeatures = true,
                        }
                }
        }
})

lspconfig.clangd.setup {
        on_attach = function(client, bufnr)
                client.server_capabilities.signatureHelpProvider = false
                on_attach(client, bufnr)
        end,
        capabilities = capabilities,
}
