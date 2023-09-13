-- TELESCOPE

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ds', builtin.treesitter, {})
vim.keymap.set('n', '<leader>cm', builtin.commands, {})
vim.keymap.set('n', '<leader>go', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>gO', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>gi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>gf', function()
        builtin.grep_string({ search = vim.fn.input(" Grep > ") });
end)
