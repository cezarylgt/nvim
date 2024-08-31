-----------------
-- Global -------
-- --------------

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>v', ':e $MYVIMRC<CR>', opts)
vim.keymap.set('n', '<leader>e', ':Explore<CR>', opts)

require('options')
require('plugins')
require('keymaps')
require('colorscheme')
