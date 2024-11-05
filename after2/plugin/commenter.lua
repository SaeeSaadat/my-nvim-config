require('Comment').setup({
    mappings = {
        basic = true,
        extra = true
    },
    toggler = {
        line = '<leader>/',
        block = '<leader>b/'
    },
    opleader = {
        ---Line-comment keymap
        line = '<leader>/',
        ---Block-comment keymap
        block = '<leader>b/',
    },
})
