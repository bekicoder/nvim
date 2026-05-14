-- =========================
--        UI SETTINGS
-- =========================
vim.opt.number = true              -- show line numbers
vim.opt.relativenumber = true      -- relative numbers
vim.opt.cursorline = true          -- highlight current line
vim.opt.termguicolors = true       -- true color support
vim.opt.signcolumn = "yes"         -- prevent text shifting
vim.opt.wrap = false               -- disable line wrap
vim.opt.scrolloff = 8              -- keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8

-- =========================
--       INDENTATION
-- =========================
vim.opt.tabstop = 4                -- tab = 4 spaces
vim.opt.shiftwidth = 4             -- indent width
vim.opt.expandtab = true           -- use spaces instead of tabs
vim.opt.smartindent = true         -- auto smart indent
vim.opt.autoindent = true

-- =========================
--        SEARCH
-- =========================
vim.opt.ignorecase = true          -- ignore case
vim.opt.smartcase = true           -- case sensitive if uppercase used
vim.opt.hlsearch = false           -- don't highlight after search
vim.opt.incsearch = true           -- show matches while typing

-- =========================
--        FILE BEHAVIOR
-- =========================
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true            -- persistent undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- =========================
--        PERFORMANCE
-- =========================
vim.opt.updatetime = 250           -- faster completion
vim.opt.timeoutlen = 400           -- faster key response

-- =========================
--        SPLITS
-- =========================
vim.opt.splitbelow = true
vim.opt.splitright = true

-- =========================
--        CLIPBOARD
-- =========================
vim.opt.clipboard = "unnamedplus"  -- system clipboard

-- =========================
--        MOUSE
-- =========================
vim.opt.mouse = "a"

-- =========================
--     BETTER COMPLETION
-- =========================
vim.opt.completeopt = { "menuone", "noselect" }

-- =========================
--     SHOW INVISIBLE
-- =========================
-- vim.opt.list = true
-- vim.opt.listchars = {
--   tab = "» ",
--   trail = "·",
--   nbsp = "␣"
-- }


-- 1. Set the delay (in milliseconds) 
-- This controls how long to wait after you stop moving/typing
vim.opt.updatetime = 2000 

-- 2. Create the auto-save mechanism
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("autosave", { clear = true }),
  callback = function()
    -- Only save if the buffer has been changed and is a real file
    if vim.bo.modified and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! update")
    end
  end,
})

-- Simple manual auto-close for HTML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.keymap.set("i", ">", "></<C-x><C-o><C-y><C-o>%<CR><C-o>O", { buffer = true })
  end,
})
 
