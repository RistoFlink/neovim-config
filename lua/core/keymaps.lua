vim.g.mapleader = " "

-- some
--vim.keymap.set("n", "<M-b>", ":Ex<CR>")

-- split screen and navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

-- Open Neotree with leader+t
vim.api.nvim_set_keymap("n", "<leader>t", ":Neotree toggle<CR>", { noremap = true, silent = true })

-- If at the bottom line when pressing j, go to the top
vim.api.nvim_set_keymap('n', 'j', 'v:lua.MyJMapping()', { expr = true, noremap = true })

function MyJMapping()
    return (vim.fn.line('.') == vim.fn.line('$')) and 'gg' or 'j'
end

-- If at the top line when k, go to the bottom
vim.api.nvim_set_keymap('n', 'k', 'v:lua.MyKMapping()', { expr = true, noremap = true })

function MyKMapping()
    return (vim.fn.line('.') == 1) and 'G' or 'k'
end
