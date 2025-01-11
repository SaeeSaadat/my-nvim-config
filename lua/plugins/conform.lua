-- return {
--   "stevearc/conform.nvim",
--   event = { "BufWritePre" },
--   cmd = { "ConformInfo" },
--   keys = {
--     {
--       -- Customize or remove this keymap to your liking
--       -- "<leader>f",
--       "<leader>=",
--       function()
--         require("conform").format({ async = true })
--       end,
--       mode = "x",
--       desc = "Format buffer",
--     },
--   },
--   -- This will provide type hinting with LuaLS
--   ---@module "conform"
--   ---@type conform.setupOpts
--   opts = {
--     -- Define your formatters
--     formatters_by_ft = {
--       lua = { "stylua" },
--       python = { "isort", "black" },
--       -- javascript = { "prettierd", "prettier", stop_after_first = true },
--     },
--     -- Set default options
--     default_format_opts = {
--       lsp_format = "fallback",
--     },
--     -- Set up format-on-save
--     format_on_save = { timeout_ms = 500 },
--     -- Customize formatters
--     formatters = {
--       shfmt = {
--         prepend_args = { "-i", "2" },
--       },
--     },
--   },
--   init = function()
--     -- If you want the formatexpr, here is the place to set it
--     vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
--   end,
-- }

return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions
    local completion = null_ls.builtins.completion
    return {
      sources = {
        formatting.stylua,
        formatting.prettier,
        formatting.black,
        formatting.eslint,
        formatting.fish_indent,
        -- diagnostics.eslint,
        diagnostics.fish,
        -- diagnostics.tsc,
        -- code_actions.eslint,
        code_actions.gitsigns,
        completion.spell
      },
    }
  end,
}
