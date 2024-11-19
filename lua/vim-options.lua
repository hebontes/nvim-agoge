vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set smarttab")
vim.cmd("set number")
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Map <leader>y to copy to the system clipboard in normal
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>Y", 'gg"+yG', { noremap = true })
vim.keymap.set("n", "<leader>r", function()
    -- Save the current file first
    vim.cmd("write")

    -- Compile and run C++ file
    vim.cmd("!echo '' && g++ -Wall % && ./a.out")
end, { noremap = true, silent = true, desc = "Compile and run C++ file" })
