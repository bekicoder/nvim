return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            -- CHANGED: Added ".configs" to the require
            local configs = require("nvim-treesitter")
            configs.setup({
                ensure_installed = { "javascript", "typescript", "lua", "vim" },
                auto_install = true,
                highlight = { enable = true }, -- This turns off 'syntax=javascript'
                indent = { enable = true },
            })
        end,
    },
    {
        "hiphish/rainbow-delimiters.nvim",
        dependencies = "nvim-treesitter/nvim-treesitter",
    }
}

