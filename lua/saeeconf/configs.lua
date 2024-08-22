vim.opt.number = true
-- vim.opt.relativenumber = true

-- vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- stuff from vahid's config
vim.opt.textwidth=79
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.cindent=true
vim.opt.colorcolumn="79"
vim.opt.smartindent = true
-----------------------------------------------------------------
--- 
vim.opt.termguicolors = true

vim.opt.splitbelow = true
vim.opt.splitright = true

-----------------------------------------------------------------
-- Highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  callback = function ()
    vim.highlight.on_yank()
  end,
})

