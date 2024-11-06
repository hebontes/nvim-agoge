--[[return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    require("hardtime").setup()
    vim.keymap.set('n', '<leader>ht', ':Hardtime toggle<CR>', {})
  end
}
--]]
return {}
