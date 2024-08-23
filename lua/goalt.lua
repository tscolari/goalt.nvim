local M = {}

local function alternative_filename(file)
    if file:match('_test.go$') ~= nil then
        return file:gsub('_test.go$', '.go')
    else
        return file:gsub('.go$', '_test.go')
    end
end

local function open_alternative_file()
    if vim.bo.filetype ~= "go" then
        return
    end

    local currentFile = vim.api.nvim_buf_get_name(0)
    local alternativeFile = alternative_filename(currentFile)
    vim.cmd('e ' .. alternativeFile)
end

function M.setup()
    vim.api.nvim_create_user_command('GoAlt', open_alternative_file, {})
end

return M
