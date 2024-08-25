require("lualine").setup({
  sections = {
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      }
    },
  },
  options = {
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' }
  },
})
