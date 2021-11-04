local use = require('packer').use
require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'
    -- Git commands di nvim
    use 'tpope/vim-fugitive'
    -- Fugitive-companion untuk berinteraksi dengan GitHub
    use 'tpope/vim-rhubarb'
    -- Bulk comment
    use 'tpope/vim-commentary'
    -- Automatic tags management
    use 'ludovicchabant/vim-gutentags'
    -- UI to select things (files, grep results, open buffers...)
    -- use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    -- Colorscheme
    -- use 'joshdick/onedark.vim'
    use 'folke/tokyonight.nvim'
    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'
    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    -- LSP Client
    use 'neovim/nvim-lspconfig'
    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    -- Snippets
    use 'L3MON4D3/LuaSnip'
    -- Auto pairs brackets
    use 'jiangmiao/auto-pairs' 
    -- File tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }
    -- Surround
    use {
        "blackCauldron7/surround.nvim",
        config = function() 
            require'surround'.setup {mappings_style = 'sandwich'}
        end
    }
    -- Formatter
    use 'sbdchd/neoformat'
    -- Dashboard
    -- use {
    --     'goolord/alpha-nvim', 
    --     requires = { 'kyazdani42/nvim-web-devicons' },
    --     config = function ()
    --         require'alpha'.setup(require'alpha.themes.dashboard'.opts)
    --     end
    -- }
    -- Key bindings popup
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
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
    
    -- Is using a standard Neovim install, i.e. built from source or using a
    -- provided appimage.
    use 'lewis6991/impatient.nvim'

end
)
