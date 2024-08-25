-- vim.notify = require("notify")

require("notify").setup{
    timeout = 1,
    render = "wrapped-compact",
    -- level = "WARN",
    level = 2,
    stages = "fade",
    top_down = false,
}
