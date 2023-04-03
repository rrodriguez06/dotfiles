local ts_utils = require("nvim-treesitter.ts_utils")

local function setup(parameters)
end

local function get_master_node()
    local node = ts_utils.get_node_at_cursor()
    if node == nil then
        error("No Treesitter parser found.")
    end

    return node
end

local function read_file(path)
    local file = io.open(path, "r")
    local content = file:read("*a")
    file:close()
    return content
end

local function run()
    local node = get_master_node()
    local bufnr = vim.api.nvim_get_current_buf()
    local filetype = vim.bo.filetype
    local line = vim.api.nvim_win_get_cursor(0)[1]

    local pattern_json = read_file("/Users/rromain/.config/nvim/lua/plugins/myPlug/lua/myPlug/patterns.json")
    local decoder = "return" .. pattern_json:gsub('("[^"]-"):', '[%1]=')
    local patterns = loadstring(decoder)()

    node = node:parent()

    if node:type() == "property_declaration" or node:type() == "field_declaration" then
        local attribute = ts_utils.get_node_text(node:child(1))[1]
        if filetype == "php" then
            attribute = attribute:sub(2)
        end
        local name = attribute:gsub('^[^0-9a-z]*', '')

        local get_head = string.format(patterns.php.get_func, name) .. " {"
        local get_corpse = string.format(patterns.php.get_corpse, attribute)

        local set_head = string.format(patterns.php.set_func, name, name) .. " {"
        local set_corpse = string.format(patterns.php.set_corpse, attribute, name)

        vim.api.nvim_buf_set_lines(bufnr, line, line, true, {"", get_head, get_corpse, "}", ""})
        vim.api.nvim_buf_set_lines(bufnr, line, line, true, {"", set_head, set_corpse, "}", ""})
    end
end

return {
    setup = setup,
    run = run
}
