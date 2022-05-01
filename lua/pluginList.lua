local use = require('packer').use
require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'
    
    use 'rlue/vim-barbaric'
    -- Git commands di nvim
    use 'tpope/vim-fugitive'
    -- Fugitive-companion untuk berinteraksi dengan GitHub
    use 'tpope/vim-rhubarb'
    -- Bulk comment
    use {
        'numToStr/Comment.nvim',
        tag = 'v0.6',
        config = function()
            require('Comment').setup()
        end
    }
    -- Automatic tags management
    use 'ludovicchabant/vim-gutentags'
    -- Colorscheme
    use 'joshdick/onedark.vim'
    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require 'plugins/lualine' end
    }
    -- Add git related info in the signs columns and popups
    use { 
        'lewis6991/gitsigns.nvim', 
        config = function() require 'plugins/gitsigns' end
    }
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require 'plugins/nvim_treesitter' end
    }
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    -- LSP Client
    use {
        'neovim/nvim-lspconfig',
        config = function() require 'plugins/nvim_lsp' end
    }
    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        config = function() require 'plugins/nvim_cmp' end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-buffer'
    -- Snippets
    use 'L3MON4D3/LuaSnip'
    -- Auto pairs brackets
    use 'jiangmiao/auto-pairs'
    -- File tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'plugins/nvim_tree' end
    }

    -- Add indentation guides even on blank lines
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {
                -- for example, context is off by default, use this to turn it on
                show_current_context = true,
                show_current_context_start = true,
            }
        end
    }
    -- Surround
    use {
        "echasnovski/mini.nvim",
        config = function()
            require 'plugins/mini_nvim'
        end
    }

    -- Formatter
    use {
        'lukas-reineke/format.nvim',
        config = function() require 'plugins/format_nvim' end
    }

    use { 'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf',
            'kyazdani42/nvim-web-devicons'
        } -- optional for icons
    }

end
)
