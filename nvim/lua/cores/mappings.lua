-- local function map(mode, keys, command, opt)
--     local options = { noremap = true, silent = true }
--     if opt then
--         options = vim.tbl_extend("force", options, opt)
--     end

--     -- all valid modes allowed for mappings
--     -- :h map-modes



--     -- helper function for M.map
--     -- can gives multiple modes and keys
--     local function map_wrapper(sub_mode, lhs, rhs, sub_options)
--         if type(lhs) == "table" then
--             for _, key in ipairs(lhs) do
--                 map_wrapper(sub_mode, key, rhs, sub_options)
--             end
--         else
--             if type(sub_mode) == "table" then
--                 for _, m in ipairs(sub_mode) do
--                     map_wrapper(m, lhs, rhs, sub_options)
--                 end
--             else
--                 if valid_modes[sub_mode] and lhs and rhs then
--                     vim.api.nvim_set_keymap(sub_mode, lhs, rhs, sub_options)
--                 else
--                     sub_mode, lhs, rhs = sub_mode or "", lhs or "", rhs or ""
--                     print(
--                     "Cannot set mapping [ mode = '" .. sub_mode .. "' | key = '" .. lhs .. "' | cmd = '" .. rhs .. "' ]"
--                     )
--                 end
--             end
--         end
--     end

--     map_wrapper(mode, keys, command, options)
-- end

-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
-- map("n", "<leader>fg", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
-- map("n", "<leader>rr", "<cmd>Telescope live_grep<CR>")
vim.api.nvim_set_keymap('n', '<leader>rr', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
-- map("n", "\\\\", "<cmd>Telescope buffers<CR>")
vim.api.nvim_set_keymap('n', '\\\\', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
-- map("n", ";;", "<cmd>Telescope help_tags<CR>")
vim.api.nvim_set_keymap('n', ';;', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
-- map("n", ";t", "<cmd>Telescope project<CR>")
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>Telescope project<CR>', { noremap = true, silent = true })

-- map("n", "<leader>lg", ":LazyGit<CR>");
vim.api.nvim_set_keymap('n', '<leader>lg', ':LazyGit<CR>', { noremap = true, silent = true })

-- map("n", "gf", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>")
vim.api.nvim_set_keymap('n', 'gf', "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", { noremap = true, silent = true })
-- map("n", "gr", "<cmd>lua require'lspsaga.rename'.rename()<CR>")
vim.api.nvim_set_keymap('n', 'gr', "<cmd>lua require('lspsaga.rename').rename()<CR>", { noremap = true, silent = true })
-- map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.api.nvim_set_keymap('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.api.nvim_set_keymap('n', 'gh', "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- map("i", "<S-TAB>", "pumvisible() ? \"\<C-p>\" : \"\<C-h>\"", { "<expr>" })

-- map("n", "<leader>tt", ":FloatermToggle<CR>")
vim.api.nvim_set_keymap('n', '<leader>tt', ':FloatermToggle<CR>', { noremap = true, silent = true })
-- map("t", "<leader>tt", "<C-\\><C-n>:FloatermToggle<CR>")
vim.api.nvim_set_keymap('t', '<leader>tt', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })

-- map("n", "<leader>c", ":FloatermNew --autoclose=0 /Users/rromain/.scripts/cht.sh<CR>")
vim.api.nvim_set_keymap('n', '<leader>c', ':FloatermNew --autoclose=0 /User/rromain/.scripts/cht.sh<CR>', { noremap = true, silent = true })

-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
-- map("n", "<leader>n", "<cmd>NvimTreeFindFile<CR>")
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true })

-- map("n", "<C-x><up>", ":tabr<CR>")
vim.api.nvim_set_keymap('n', '<C-x><up>', ':tabr<CR>', { noremap = true, silent = true })
-- map("n", "<C-x><down>", ":tabl<CR>")
vim.api.nvim_set_keymap('n', '<C-x><down>', ':tabl<CR>', { noremap = true, silent = true })
-- map("n", "<C-x><left>", ":tabp<CR>")
vim.api.nvim_set_keymap('n', '<C-x><left>', ':tabp<CR>', { noremap = true, silent = true })
-- map("n", "<C-x><right>", ":tabn<CR>")
vim.api.nvim_set_keymap('n', '<C-x><right>', ':tabn<CR>', { noremap = true, silent = true })

-- map("n", "<leader>ce", ":Copilot enable<CR>")
vim.api.nvim_set_keymap('n', '<leader>ce', ':Copilot enable<CR>', { noremap = true, silent = true })
-- map("n", "<leader>cd", ":Copilot disable<CR>")
vim.api.nvim_set_keymap('n', '<leader>cd', ':Copilot disable<CR>', { noremap = true, silent = true })

-- map("i", "<S-Tab>", "copilot#Accept()")

-- map("i", "<cr>", "pomvisible() ? coc#_select_confirm() \: \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>\"", { "<expr>" })

-- map("v", "L", ":m '>+1<CR>gv=gv")
vim.api.nvim_set_keymap('v', 'L', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- map("v", "O", ":m '<-2<CR>gv=gv")
vim.api.nvim_set_keymap('v', 'O', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- map("v", "<leader>sr", ":lua require('sniprun').run('v')<CR>")
vim.api.nvim_set_keymap('v', '<leader>sr', ":lua require('sniprun').run('v')<CR>", { noremap = true, silent = true })
-- map("n", "<leader>sr", ":lua require('sniprun').run('n')<CR>")
vim.api.nvim_set_keymap('n', '<leader>sr', ":lua require('sniprun').run('n')<CR>", { noremap = true, silent = true })
-- map("n", "<leader>rc", ":SnipClose<CR>")
vim.api.nvim_set_keymap('n', '<leader>rc', ':SnipClose<CR>', { noremap = true, silent = true })

-- map("n", "<leader>mm", ":lua require('plugins.myPlug.lua.myPlug').run()<CR>")
vim.api.nvim_set_keymap('n', '<leader>mm', ":lua require('plugins.myPlug.lua.myPlug').run()<CR>", { noremap = true, silent = true })

-- map("n", "<leader>ss", ":SymbolsOutline<CR>")
vim.api.nvim_set_keymap('n', '<leader>ss', ':SymbolsOutline<CR>', { noremap = true, silent = true })
