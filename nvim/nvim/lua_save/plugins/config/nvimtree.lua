local g = vim.g

g.nvim_tree_add_trailing = 0
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

g.nvim_tree_show_icons = {
    folders = 1,
    files = 1,
    git = 1,
    folder_arrows = 1
}

g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        deleted = "",
        ignored = "◌",
        renamed = "➜",
        staged = "✓",
        unmerged = "",
        unstaged = "✗",
        untracked = "★",
    },
    folder = {
        default = "",
        empty = "",
        empty_open = "",
        open = "",
        symlink = "",
        symlink_open = "",
    },
}

local config = {
    -- nvim_tree_indent_markers = 1,
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {},
    -- auto_close = false,
    open_on_tab = false,
    update_to_buf_dir = {
        enable = true,
        auto_open = true,
    },
    hijack_cursor = false,
    update_cwd = false,
    diagnostics = {
        enable = true,
        icons = {
            error = "",
            warning = "",
            info = "",
            hint = "",
        },
    },
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {},
    },
    system_open = {
        cmd = nil,
        args = {},
    },
    view = {
        width = 30,
        height = 300,
        side = 'left',
        auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        }
    },
    actions = {
        open_file = {
            window_picker = {
                exclude = {
                    filetype = { "notify", "packer", "qf" },
                    buftype = { "terminal" },
                }
            },
            quit_on_open = true
        }
    }
}

local nvimtree = require('nvim-tree')
nvimtree.setup(config)
