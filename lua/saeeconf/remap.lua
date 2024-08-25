vim.g.mapleader = " "

-- Move highlighted line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Go to next, but keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- leader+yank -> copy to clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- remove highlight with escape
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", ";", ":")

-- Window Navigation
vim.keymap.set("n", "<C-J>", "<C-w><C-j>")
vim.keymap.set("n", "<C-K>", "<C-w><C-k>")
vim.keymap.set("n", "<C-H>", "<C-w><C-h>")
vim.keymap.set("n", "<C-L>", "<C-w><C-l>")

vim.keymap.set("n", "<leader>z",
    "<cmd>lua require'centerpad'.toggle { leftpad = 20, rightpad = 20 } <cr>",
    { silent = true, noremap = true })

-- Quote Encapsulate
vim.keymap.set("n", "<leader>'", 
    "ciw'<C-r>\"'<Esc>", {silent = true, noremap = true })


vim.keymap.set({"v", "x"}, "<leader>'", 
    "c'<C-r>\"'<Esc>", {silent = true, noremap = true })

vim.keymap.set("n", "<leader>\"", 
    "ciw\"<C-r>\"\"<Esc>", {silent = true, noremap = true })

vim.keymap.set({"v", "x"}, "<leader>\"", 
    "c\"<C-r>\"\"<Esc>", {silent = true, noremap = true })

