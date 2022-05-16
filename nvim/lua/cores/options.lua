local opt = vim.opt
local g = vim.g
local vim = vim
local api = vim.api

opt.title = true
opt.clipboard = 'unnamedplus'
opt.cmdheight = 1
opt.cul = true

opt.nu = true
-- opt.nowrap = true

-- opt.nohlsearch = true
-- opt.noswapfile = true

opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.autoindent = true
opt.cindent = true

opt.hidden = true
opt.ignorecase = false
opt.smartcase = false
opt.mouse = "a"

opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = true

opt.shortmess:append("sI")
opt.shortmess:append("c")

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.softtabstop = 4
opt.termguicolors = true

-- opt.undofile = true
-- opt.undodir = "~/.config/Undodir"

opt.updatetime = 50

opt.incsearch = true
-- opt.noshowmode = true

opt.signcolumn = "yes"

opt.scrolloff = 8

-- opt.whichwrap:append("<>[]hl")

opt.guifont = "DejaVuSansMono Nerd Font:h14"
-- opt.background = "dark"

opt.completeopt = { "menuone", "noinsert", "noselect" }

-- vim.cmd("colorscheme aquarium")


-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"

-- local M = {}

-- function M.nvim_create_augroups(definitions)
--     for group_name, definition in pairs(definitions) do
--         api.nvim_command('augroup ' .. group_name)
--         api.nvim_command('autocmd!')
--         for _, def in ipairs(definition) do
--             local command = table.concat(vim.tbl_flatten { 'autocmd', def }, ' ')
--             api.nvim_command(command)
--         end
--         api.nvim_command('augroup END')
--     end
-- end

-- local autoCommands = {
--     open_folds = {
--         { "BufReadPost,FileReadPost", "*", "normal zR" }
--     }
-- }

-- M.nvim_create_augroups(autoCommands)




g.mapleader = ","

g.auto_save = 1
g.auto_save_events = { "InsertLeave", "TextChanged" }

g.copilot_no_tab_map = true

g.rainbow_active = 1

g.completion_matching_strategy_list = { "exact", "substring", "fuzzy" }

g.copilot_assume_mapped = true
