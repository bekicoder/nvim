return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls-extras.nvim", -- This MUST be here
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.eslint_d"), -- This will work once extras is loaded
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
            },
        })
        vim.keymap.set('n', "<leader>gf", vim.lsp.buf.format, {})
    end
}

