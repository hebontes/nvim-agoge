vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Map <leader>y to copy to the system clipboard in normal 
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>Y", 'gg"+yG', { noremap = true })
