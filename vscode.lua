require("packerInit")

local use = require('packer').use
require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'
    
    -- Bulk comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Surround
    use {
        'blackCauldron7/surround.nvim',
        config = function() 
            require'surround'.setup {mappings_style = 'sandwich'}
        end
    }

end
)

require('mappings')