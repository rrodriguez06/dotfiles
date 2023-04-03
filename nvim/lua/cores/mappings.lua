----------------------------- VIM PLUGINS MAPPINGS -----------------------------

-- telescope mappings
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rr', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '\\\\', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';;', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>Telescope project<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>Telescope harpoon marks<CR>', { noremap = true, silent = true })

-- lazygit mapping
vim.api.nvim_set_keymap('n', '<leader>lg', ':LazyGit<CR>', { noremap = true, silent = true })

-- coc mappings
vim.api.nvim_set_keymap('n', 'gf', '<Plug>(coc-references)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-rename)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'gh', ":call CocActionAsync('doHover')<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', '<Plug>(coc-codeaction)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dd', ':CocList diagnostics<CR>', { noremap = false, silent = true })

-- hop mappings
vim.api.nvim_set_keymap('n', '<leader>jw', ':HopWord<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>jp', ':HopPattern<CR>', { noremap = true, silent = true })

-- nerdtree mappings
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- harpoon mappings
vim.api.nvim_set_keymap('n', '<leader>m', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })

----------------------------- VIM DEFAULT MAPPINGS -----------------------------

-- tab changing mapping
vim.api.nvim_set_keymap('n', '<C-x><up>', ':tabr<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x><down>', ':tabl<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x><left>', ':tabp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x><right>', ':tabn<CR>', { noremap = true, silent = true })

-- moving lines in visual mode
vim.api.nvim_set_keymap('v', 'L', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'O', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- switch buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', { noremap = true, silent = true })
