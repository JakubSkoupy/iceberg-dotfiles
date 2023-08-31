vim.diagnostic.config({
    virtual_text = false
})

vim.keymap.set("n", "<leader>dd", require("lsp_lines").toggle,
{ desc = "Toggle lsp_lines"}
)
