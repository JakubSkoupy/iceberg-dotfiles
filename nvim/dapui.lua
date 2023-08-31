-- require("dapui").float_element(stacks, "height: 200, width: 200")

require("dapui").setup({
  icons = {
    expanded = '▾',
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
        id = 'scopes',
        size = 0.25,
      },
      {
        id = 'breakpoints',
        size = 0.25,
      },
      {
        id = 'stacks',
        size = 0.25,
      },
      {
        id = 'watches',
        size = 0.25,
      },
    },
    size = 40,
    position = 'left', -- or 'right'
  },
--  tray = {
--    elements = {
--    },
--    size = 0,
--    position = 'bottom', -- or 'top'
--  },
})


require("dapui").open()
vim.api.nvim_set_keymap('n', '<leader>11', ':luafile /home/kuba/.config/nvim/after/plugin/dap.lua<CR>', {noremap = true})
