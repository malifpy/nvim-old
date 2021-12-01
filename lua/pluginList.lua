local use = require('packer').use
require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'
    -- Is using a standard Neovim install, i.e. built from source or using a
    -- provided appimage.
    -- Git commands di nvim
    use 'tpope/vim-fugitive'
    -- Fugitive-companion untuk berinteraksi dengan GitHub
    use 'tpope/vim-rhubarb'
    -- Bulk comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- Automatic tags management
    use 'ludovicchabant/vim-gutentags'
    -- Colorscheme
    -- use 'joshdick/onedark.vim'
    use 'folke/tokyonight.nvim'
    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require 'plugins/lualine' end
    }
    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'
    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
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
    -- Surround
    use {
        'blackCauldron7/surround.nvim',
        config = function() 
            require'surround'.setup {mappings_style = 'sandwich'}
        end
    }
    -- Formatter
    use {
        'lukas-reineke/format.nvim',
        config = function() require 'plugins/format_nvim' end
    }
    -- -- Dashboard
    -- use {
    --     'goolord/alpha-nvim', 
    --     requires = { 'kyazdani42/nvim-web-devicons' },
    --     config = function ()
    --         require'plugins/alpha_nvim'
    --     end
    -- }
    -- Key bindings popup
    use {
      'folke/which-key.nvim',
      config = function()
        require('which-key').setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    use { 'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf',
            'kyazdani42/nvim-web-devicons'
        } -- optional for icons
    }
    
    -- use {
    --     'nvim-telescope/telescope.nvim',
    --     requires = { {'nvim-lua/plenary.nvim'} },
    --     config = function() require('telescope').load_extension('fzy_native') end
    -- }
    -- 
    -- use 'nvim-telescope/telescope-fzy-native.nvim'
end
)
