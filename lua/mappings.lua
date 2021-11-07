-- Copy to clipboard in visual mode
vim.api.nvim_set_keymap('v', '<C-c>', "\"+y", { noremap = true, silent = true })

-- Paste from clipboard in insert mode
vim.api.nvim_set_keymap('i', '<C-v>', "<Esc>\"+pa", { noremap = true, silent = true })

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Remap for dealing with word wrap
-- vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'k', 'kzz', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'j', 'jzz', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Up>', '<Up>zz', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Down>', '<Down>zz', { noremap = true, silent = true })

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })

-- NvimTree commands
vim.api.nvim_set_keymap('n', '<F5>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Space>', "<cmd>lua require('fzf-lua').buffers()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gg', "<cmd>lua require('fzf-lua').grep()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lg', "<cmd>lua require('fzf-lua').live_grep()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rf', "<cmd>lua require('fzf-lua').lsp_references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>df', "<cmd>lua require('fzf-lua').lsp_definitions()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dc', "<cmd>lua require('fzf-lua').lsp_declarations()<CR>", { noremap = true, silent = true })
