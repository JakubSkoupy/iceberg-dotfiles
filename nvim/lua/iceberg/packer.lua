-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'


    -- TELESCOPE
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nvim-telescope/telescope-symbols.nvim' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {}
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- rust
    --[[ use {
        "simrat39/rust-tools.nvim",
        config = function()
            require("plugins/rust_tools").setup()
        end,
    } ]]


    -- LINES
    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    })

    -- SURROUND
    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({
            })
        end
    })

    -- PAIRS
    use { "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    --
    -- OUTLINE
    use 'simrat39/symbols-outline.nvim'
    -- HARPOON
    use('theprimeagen/harpoon')
    -- UNDO TREE
    use('mbbill/undotree')
    -- COMMENT

    -- STATUS LINE
    use 'feline-nvim/feline.nvim'

    -- FOLD
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- TREE
    use {
        'nvim-tree/nvim-tree.lua',
    }
    use 'nvim-tree/nvim-web-devicons'


    -- Format
    use { "elentok/format-on-save.nvim" }

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    --  -- DAP (yes, dap)
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use 'mfussenegger/nvim-dap-python'
    use {
        -- "williamboman/mason.nvim",
        -- "mfussenegger/nvim-dap",
        "jay-babu/mason-nvim-dap.nvim",
    }
    -- COLOR SCHEMES ---------------------------------------------------------------
    use 'navarasu/onedark.nvim'
    use "xiyaowong/transparent.nvim"
    use 'rmehri01/onenord.nvim'
    -- nord fox
    use "EdenEast/nightfox.nvim"
    use 'AlexvZyl/nordic.nvim'
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                -- ...
            })
        end
    })
end)
