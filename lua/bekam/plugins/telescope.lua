return {
  -- Telescope main plugin
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- required by Telescope
  },
  -- Optional FZF sorter
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
}

