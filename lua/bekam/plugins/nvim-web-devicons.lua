return {
  "nvim-tree/nvim-web-devicons",
  opts = {
    -- This adds the icon to the plugin's internal list
    override = {
      yul = {
        icon = "💎", -- This is a Nerd Font hex icon
        color = "#519aba",
        cterm_color = "74",
        name = "Yul",
      },
    },
    -- Ensures a generic icon is returned if the extension is unknown
    default = true,
  },
}

