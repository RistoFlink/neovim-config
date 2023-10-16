vim.g.mapleader = " "

-- some
--vim.keymap.set("n", "<M-b>", ":Ex<CR>")

-- split screen and navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

-- Open Neotree with leader+t
vim.api.nvim_set_keymap("n", "<leader>t", ":Neotree toggle<CR>", { noremap = true, silent = true })
