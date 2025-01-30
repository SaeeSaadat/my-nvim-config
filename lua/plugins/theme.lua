-- return {
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         lazy = False,
--         priority = 1000,
--         opts = {},
--         config = function()
--             require("catppuccin").setup()
--
--             -- setup must be called before loading
--             vim.cmd.colorscheme "catppuccin"
--         end,
--     }
-- }

return {
	"navarasu/onedark.nvim",
	opts = {
		style = "deep",
	},
	config = function()
        require("onedark").setup {
            style = 'deep'
        }
		require("onedark").load()
	end,
}
