-- define common options
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}


-----------------
-- Normal mode --
-----------------


------------------
--- telescope ----
------------------
require('telescope').setup({
    defaults = {
        file_ignore_patterns = { "node_modules", "android" }
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>\\f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>\\ws', function()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>\\Ws', function()
    local word = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>\\s', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


---------------
---Lsp---------
---------------




-- Hint: see `:h vim.map.set()`
-- Better window navigation
-- vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
-- vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
-- vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
-- vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
-- vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
-- vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
-- vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

vim.keymap.set('n', '<leader>v', ':e $MYVIMRC<CR>', {})
vim.keymap.set('n', '<leader>e', ':Explore<CR>', {})
-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

local opts = { buffer = 0 }
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
