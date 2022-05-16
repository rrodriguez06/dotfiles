local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "tsx",
        "toml",
        "fish",
        "php",
        "json",
        "yaml",
        "swift",
        "html",
        "scss",
        "go",
        "python",
        "c",
        "cpp"
    },
}
