local colors = {
    fg = "#cddbf9",
    bg = "#1a1a24",
    sides = "#313449",

    error = "#c34864",
    warn = "#d66652",
    hint = "#c8cca7",
    info = "#e6dfb8",

    normal = "#b8dceb",
    insert = "#b1dba4",
    visual = "#8787bf",
    replace = "#c34864",
    enter = "#2c2e3e",
    select = "#de956f",
    command = "#a7b7d6",
    none = "#63718b",

    success = "#b1dba4",
}

local config = {
    options = {
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = "",
        show_close_icon = true,
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        always_show_bufferline = true,
        diagnostics = false,
        custom_filter = function(buf_number)
            local present_type, type = pcall(function()
                return vim.api.nvim_buf_get_var(buf_number, "term_type")
            end)
            if present_type then
                if type == "vert" then
                    return false
                elseif type == "horz" then
                    return false
                end
                return true
            end
            return true
        end,
    },

    highlights = {
        background = {
            guifg = colors.fg,
            guibg = colors.bg,
        },

        buffer_selected = {
            guifg = colors.select,
            guibg = colors.bg,
            gui = "bold",
        },
        buffer_visible = {
            guifg = colors.normal,
            guibg = colors.bg,
        },

        error = {
            guifg = colors.error,
            guibg = colors.bg,
        },
        error_diagnostic = {
            guifg = colors.error,
            guibg = colors.bg,
        },

        close_button = {
            guifg = colors.fg,
            guibg = colors.bg,
        },
        close_button_visible = {
            guifg = colors.fg,
            guibg = colors.bg,
        },
        close_button_selected = {
            guifg = colors.error,
            guibg = colors.bg,
        },
        fill = {
            guifg = colors.fg,
            guibg = colors.bg,
        },
        indicator_selected = {
            guifg = colors.bg,
            guibg = colors.bg,
        },
        
        modified = {
            guifg = colors.error,
            guibg = colors.bg,
        },
        modified_visible = {
            guifg = colors.error,
            guibg = colors.bg,
        },
        modified_selected = {
            guifg = colors.success,
            guibg = colors.bg,
        },
        
        separator = {
            guifg = colors.sides,
            guibg = colors.sides,
        },
        separator_visible = {
            guifg = colors.sides,
            guibg = colors.sides,
        },
        separator_selected = {
            guifg = colors.sides,
            guibg = colors.sides,
        },

        tab = {
            guifg = colors.fg,
            guibg = colors.bg,
        },
        tab_selected = {
            guifg = colors.fg,
            guibg = colors.bg,
        },
        tab_close = {
            guifg = colors.error,
            guibg = colors.bg,
        },
    },
}

require("bufferline").setup(config)
