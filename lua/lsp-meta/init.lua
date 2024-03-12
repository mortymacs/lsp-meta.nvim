local M = {}

local toolkit = require("toolkit")
local config = require("config")

function M.setup(opts)
    opts = opts or {}

    local loaded_config = config.SetDefaults(opts)

    vim.api.nvim_create_autocmd({"LspAttach", "TextChanged"}, {
        callback = function(args)
            toolkit.Process(loaded_config)
        end
    })
end

return M
