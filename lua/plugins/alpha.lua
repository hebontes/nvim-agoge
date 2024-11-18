return {
  "goolord/alpha-nvim",
  -- dependencies = { 'echasnovski/mini.icons' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local startify = require("alpha.themes.startify")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    startify.file_icons.provider = "devicons"
    -- Add additional menu options
    startify.section.bottom_buttons.val = {
      startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      startify.button("c", "  Config", ":cd ~/.config/nvim<CR>"),
      startify.button("q", "  Quit", ":qa<CR>"),
    }
    require("alpha").setup(
      startify.config
    )
  end,
}
