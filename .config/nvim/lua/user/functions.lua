local M = {}

local opt = vim.opt

-- Function to toggle indentation size
function M.toggle_indentation()
    local current_indent = opt.shiftwidth:get()
    if current_indent == 4 then
        opt.shiftwidth = 2
        opt.tabstop = 2
        opt.softtabstop = 2
        print("Indentation set to 2 spaces")
    else
        opt.shiftwidth = 4
        opt.tabstop = 4
        opt.softtabstop = 4
        print("Indentation set to 4 spaces")
    end
end

return M
