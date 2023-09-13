local dapui = require("dapui")
dapui.setup({
        icons = {
                expanded = '▾MMMM',
                collapsed = '▸',
        },
        mappings = {
                expand_frame = '<CR>',
                open = 'o',
                remove = 'd',
                edit = 'e',
                repl = 'r',
        },
        sidebar = {
                elements = {
                        {
                                id = 'breakpoints',
                        },
                        {
                                id = 'stacks',
                        },
                        {
                                id = 'scopes',
                        },
                },
                size = 10,
                position = 'right', -- or 'right'
        },
        tray = {
                elements = {
                },
                size = 110,
                position = 'bottom', -- or 'top'
        },
})
dapui.open()


vim.api.nvim_set_keymap('n', '<leader>11', ':luafile /home/kuba/.config/nvim/after/plugin/dap.lua<CR>',
        { noremap = true })
