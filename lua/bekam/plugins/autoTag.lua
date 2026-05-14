return { 
  "alvan/vim-closetag",
  init = function()
    -- Only enable for these file extensions
    vim.g.closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.tsx"
  end
}

