local lsp = require('lspconfig')
local coq = require('coq')
local signature = require('lsp_signature')
local lspInstaller = require('nvim-lsp-installer')
local navigator = require('navigator')
local saga = require('lspsaga')

lspInstaller.on_server_ready(function(server)
    local opts = {
        coq.lsp_ensure_capabilities(),
        capabilities = vim.lsp.protocol.make_client_capabilities(),
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
        open = '<CR>', vsplit = '<C-v>', split = '<C-x>', quit = { 'q', '<ESC>' }
    },
    max_preview_lines = 10
}

require "coq_3p" {
    { src = "nvimlua", short_name = "nLUA", conf_only = false },
    { src = "bc", short_name = "MATH", precision = 6 },
    { src = "cow", trigger = "!cow" },
    { src = "figlet", trigger = "!big" },
}

vim.cmd('COQnow -s')
