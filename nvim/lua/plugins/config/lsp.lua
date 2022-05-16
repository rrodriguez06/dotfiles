local lsp = require('lspconfig')
-- local coq = require('coq')
local signature = require('lsp_signature')
local lspInstaller = require('nvim-lsp-installer')
local navigator = require('navigator')
local saga = require('lspsaga')

-- local cmp = require('cmp')

lspInstaller.on_server_ready(function(server)
    local opts = {
        -- coq.lsp_ensure_capabilities()
    }

    -- Add language specific options here

    server:setup(opts)
end)

signature.setup()

navigator.setup({
    keymaps = {
        { key = "gh", func = "hover({ popup_opts = { border = single, max_width = 80 } })" },
        { key = "<leader>gr", func = "require('navigator.rename').rename()" },
        { key = "gf", func = "require('navigator.reference').reference()" },
        { key = "gs", func = "require('navigator.treesitter').buf_ts()" }
    },
    lsp = {}
})

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
    finder_action_keys = {
        open = '<CR>', vsplit = '<C-v>', split = '<C-x>', quit = 'q'
    },
    max_preview_lines = 10
}

-- vim.cmd('COQnow -s')

-- local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- local check_back_space = function()
--     local col = vim.fn.col(".") - 1
--     return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
-- end

-- cmp.setup {
--     formatting = {
--         format = function(entry, vim_item)
--             -- fancy icons and a name of kind
--             vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
--             -- set a name for each source
--             vim_item.menu = ({
--                 buffer = "[Buffer]",
--                 nvim_lsp = "[LSP]",
--                 ultisnips = "[UltiSnips]",
--                 nvim_lua = "[Lua]",
--                 cmp_tabnine = "[TabNine]",
--                 look = "[Look]",
--                 path = "[Path]",
--                 spell = "[Spell]",
--                 calc = "[Calc]",
--                 emoji = "[Emoji]"
--             })[entry.source.name]
--             return vim_item
--         end
--     },
--     snippet = { expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end },
--     sources = {
--         { name = 'buffer' }, { name = 'nvim_lsp' }, { name = "ultisnips" },
--         { name = "nvim_lua" }, { name = "look" }, { name = "path" },
--         { name = 'cmp_tabnine' }, { name = "calc" }, { name = "spell" },
--         { name = "emoji" }
--     },
--     completion = { completeopt = 'menu,menuone,noinsert' }
-- }

-- require("nvim-autopairs.completion.cmp").setup({
--     map_cr = true,
--     map_complete = true,
--     auto_select = true
-- })
