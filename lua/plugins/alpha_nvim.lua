local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                              ",
    "                    ⢀⣤⣤⡀      ",
    "                    ⣿⣿⣿⣿      ",
    "                    ⢿⣿⣿⠟      ",
    "                    ⠘⠻⣿⣷⣄     ",
    "                 ⣴⣶⣿⡆  ⠉⠉ ⠈⣶⡆ ",
    "                ⢠⣿⣿⣿⡇      ⢻⣷ ",
    "                ⣼⣿⡿⠟       ⣸⣿⡄",
    "                ⣿⣿⠃        ⠙⣿⣷",
    "               ⠘⠛⠃        ⢰⣾⣿⠏",
    "              ⢠⣧⡔         ⠘⠟⠁ ",
    "              ⢸⣿⠇             ",
    "Ah shit, here we go again."
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Open file", ':FzfLua files<CR>'), -- I don't know why, but I can't use <CR> here
    dashboard.button( "r", "  > Recent"   , ":FzfLua oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune") 
-- dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
