return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    -- TREESITTER
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "go","javascript"},
      highlight = { enable = true },
      indent = { enable = true }  
    })
  end
}
