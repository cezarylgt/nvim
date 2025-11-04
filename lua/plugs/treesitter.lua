return {

    "nvim-treesitter/nvim-treesitter",

    config = function() 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {"lua", "javascript", "cpp"},
            highlight = {enable = true},
            indent = {enable = true},
        })
    end

}
