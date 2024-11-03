-- return {
--   -- amongst your other plugins
--   -- {'akinsho/toggleterm.nvim', version = "*", config = true}
--   -- or
--   {'akinsho/toggleterm.nvim', version = "*", opts = {
--         --[[ things you want to change go here]]}
--
--     }
-- }
return {

    'akinsho/toggleterm.nvim',
    config = function() 
      require('toggleterm').setup({
        open_mapping = [[<C-\>]],
        direction = 'horizontal'
    })
    end
}

