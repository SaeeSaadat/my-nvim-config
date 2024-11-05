require("lualine").setup({
    options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
    },

  sections = {
    -- lualine_c = {{'filename', separator = ''}, 'copilot'},
    lualine_c = {{'filename', separator = ''}},
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      }
    },
  },
})
