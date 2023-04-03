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

local vi_mode_colors = {
    ['n'] = { "NORMAL", colors.normal },
    ['no'] = { "N-PENDING", colors.normal },
    ['i'] = { "INSERT", colors.insert },
    ['ic'] = { "INSERT", colors.insert },
    ['t'] = { "TERMINAL", colors.command },
    ['v'] = { "VISUAL", colors.visual },
    ['V'] = { "V-LINE", colors.visual },
    ['^V'] = { "V-BLOCK", colors.visual },
    ['R'] = { "REPLACE", colors.replace },
    ['Rv'] = { "V-REPLACE", colors.replace },
    ['s'] = { "SELECT", colors.select },
    ['S'] = { "S-LINE", colors.select },
    ['^S'] = { "S-BLOCK", colors.select },
    ['c'] = { "COMMAND", colors.command },
    ['cv'] = { "COMMAND", colors.command },
    ['ce'] = { "COMMAND", colors.command },
    ['r'] = { "PROMPT", colors.enter },
    ['rm'] = { "MORE", colors.enter },
    ['r?'] = { "CONFIRM", colors.enter },
    ['!'] = { "SHELL", colors.command },
}

local icon_styles = {
   default = {
      left = "",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
   arrow = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   block = {
      left = " ",
      right = " ",
      main_icon = "   ",
      vi_mode_icon = "  ",
      position_icon = "  ",
   },

   round = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   slant = {
      left = " ",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
}

local config = {
    lsp = require "feline.providers.lsp",
    lsp_severity = vim.diagnostic.severity,
}

config.statusline_style = icon_styles.slant
config.shortline = true

config.components = {
    active = {},
}

config.main_icon = {
    provider = config.statusline_style.main_icon,

    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
    right_sep = {
        str = config.statusline_style.right,
        hl = {
            fg = colors.bg,
            bg = colors.sides,
        },
    },
}

config.file_name = {
    provider = function()
        local filename = vim.fn.expand("%:t")
        local extension = vim.fn.expand("%:e")
        local icon = require("nvim-web-devicons").get_icon(filename, extension)
        if icon == nil then
            icon = " "
            return icon
        end
        return " " .. icon .. " " .. filename .. " "
    end,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 70
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
    right_sep = {
        str = config.statusline_style.right,
        hl = {
            fg = colors.bg,
            bg = colors.sides,
        },
    },
}

config.dir_name = {
    provider = function()
        local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
        return "  " .. dir_name .. " "
    end,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 80
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
    right_sep = {
        str = config.statusline_style.right,
        hl = {
            fg = colors.bg,
            bg = colors.sides,
        },
    },
}

config.diff = {
    add = {
        provider = "git_diff_added",
        hl = {
            fg = colors.fg,
            bg = colors.bg,
        },
        icon = " ",
    },
    change = {
        provider = "git_diff_changed",
        hl = {
            fg = colors.fg,
            bg = colors.bg,
        },
        icon = " ",
    },
    remove = {
        provider = "git_diff_removed",
        hl = {
            fg = colors.fg,
            bg = colors.bg,
        },
        icon = "  ",
    },
}

config.git_branch = {
    provider = "git_branch",
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 70
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
    icon = "  ",
}

config.diagnostic = {
    error = {
        provider = "diagnostic_errors",
        enabled = function()
            return config.lsp.diagnostics_exist(config.lsp_severity.ERROR)
        end,
        hl = { fg = colors.error },
        icon = "  ",
    },
    warning = {
        provider = "diagnostic_warnings",
        enabled = function()
            return config.lsp.diagnostics_exist(config.lsp_severity.WARN)
        end,
        hl = { fg = colors.warning },
        icon = "  ",
    },
    hint = {
        provider = "diagnostic_hints",
        enabled = function()
            return config.lsp.diagnostics_exist(config.lsp_severity.HINT)
        end,
        hl = { fg = colors.hint },
        icon = "  ",
    },
    info = {
        provider = "diagnostic_info",
        enabled = function()
            return config.lsp.diagnostics_exist(config.lsp_severity.INFO)
        end,
        hl = { fg = colors.info },
        icon = "  ",
    },
}

config.lsp_progress = {
    provider = function()
        local Lsp = vim.lsp.util.get_progress_messages()[1]
        if Lsp then
            local msg = Lsp.message or ""
            local percentage = Lsp.percentage or 0
            local title = Lsp.title or ""
            local spinners = {
                "",
                "",
                "",
            }
            local success_icon = {
                "",
                "",
                "",
            }
            local ms = vim.loop.hrtime() / 1000000
            local frame = math.floor(ms / 120) % #spinners

            if percentage >= 70 then
                return string.format(" %%<%s %s %s (%s%%%%) ", success_icon[frame + 1], title, msg, percentage)
            end
            return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
        end
        return ""
    end,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 80
    end,
    hl = { fg = colors.success },
}

config.lsp_icon = {
    provider = function()
        if next(vim.lsp.buf_get_clients()) ~= nil then
            return "  LSP"
        else
            return ""
        end
    end,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 70
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
}

config.empty_space = {
    provider = " " .. config.statusline_style.left,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
}

config.empty_spaceColored = {
    provider = config.statusline_style.left,
    hl = function()
        return {
            fg = vi_mode_colors[vim.fn.mode()][2],
            bg = colors.bg,
        }
    end,
}

config.mode_icon = {
    provider = config.statusline_style.mode_icon,
    hl =  function()
        return {
            fg = colors.bg,
            bg = vi_mode_colors[vim.fn.mode()][2],
        }
    end,
}

config.empty_space2 = {
    provider = function()
        return " " .. vi_mode_colors[vim.fn.mode()][1] .. " "
    end,
    hl = function()
        return {
            fg = vi_mode_colors[vim.fn.mode()][2],
            bg = colors.bg,
        }
    end,
}

config.separator_right = {
    provider = config.statusline_style.left,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
}

config.separator_right2 = {
    provider = config.statusline_style.left,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
    end,
    hl = {
        fg = colors.success,
        bg = colors.bg,
    },
}

config.position_icon = {
    provider = config.statusline_style.position_icon,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
    end,
    hl = {
        fg = colors.fg,
        bg = colors.bg,
    },
}

config.current_line = {
    provider = function()
        local current_line = vim.fn.line(".")
        local total_lines = vim.fn.line("$")

        if current_line == 1 then
            return " Top "
        elseif current_line == vim.fn.line("$") then
            return " Bot "
        end
        local result, _ = math.modf((current_line / total_lines) * 100)
        return " " .. result .. "%% "
    end,
    enabled = config.shortline or function(winid)
        return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
    end,
    hl = {
        fg = colors.success,
        bg = colors.bg,
    },
}

local function add_table(a, b)
    table.insert(a, b)
end

config.left = {}
config.middle = {}
config.right = {}

add_table(config.left, config.main_icon)
add_table(config.left, config.dir_name)
add_table(config.left, config.file_name)
add_table(config.left, config.diff.add)
add_table(config.left, config.diff.change)
add_table(config.left, config.diff.remove)
add_table(config.left, config.diagnostic.error)
add_table(config.left, config.diagnostic.warning)
add_table(config.left, config.diagnostic.hint)
add_table(config.left, config.diagnostic.info)

add_table(config.middle, config.lsp_progress)

add_table(config.right, config.lsp_icon)
add_table(config.right, config.git_branch)
-- add_table(config.right, config.empty_space)
add_table(config.right, config.empty_spaceColored)
add_table(config.right, config.mode_icon)
add_table(config.right, config.empty_space2)
add_table(config.right, config.separator_right)
-- add_table(config.right, config.separator_right2)
add_table(config.right, config.position_icon)
add_table(config.right, config.current_line)

config.components.active[1] = config.left
config.components.active[2] = config.middle
config.components.active[3] = config.right

require('feline').setup {
    theme = {
        bg = colors.bg,
        fg = colors.fg,
    },
    components = config.components,
    -- vi_mode_colors = vi_mode_colors,
}
