--[[return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-frecency.nvim',
    'kkharji/sqlite.lua',
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    -- Configure Telescope
    telescope.setup({
      extensions = {
        frecency = {
          show_scores = true,
          show_unindexed = true,
          ignore_patterns = {"*.git/*", "*/tmp/*"},
          disable_devicons = false,
          workspaces = {
            ["conf"]    = "/home/user/.config",
            ["data"]    = "/home/user/.local/share",
            ["project"] = "/home/user/projects",
            ["wiki"]    = "/home/user/wiki"
          }
        }
      }
    })

    -- Load the frecency extension
    telescope.load_extension("frecency")

    -- Keymaps
    vim.keymap.set('n', '<leader>ff', function()
      telescope.extensions.frecency.frecency()
    end, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
--]]

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',  
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
