return {
    {
    "mason-org/mason.nvim",
    config = function()
        require("mason").setup()
    end
},
{
    "mason-org/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls"}
        })
    end
},
{
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()


        vim.lsp.enable("lua_ls")
                -- Keymaps for LSP actions
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
                vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
},
{
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
        -- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
  }
}
require("telescope").load_extension("ui-select")
end
}
}
