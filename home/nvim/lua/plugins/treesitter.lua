return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "c", "rust", "lua", "python", "html", "css" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
