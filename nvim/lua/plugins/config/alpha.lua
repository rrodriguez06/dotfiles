local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[        /\          /\          /\       ]],
    [[     /\//\\/\    /\//\\/\    /\//\\/\    ]],
    [[  /\//\\\///\\/\//\\\///\\/\//\\\///\\/\ ]],
    [[ //\\\//\/\\///\\\//\/\\///\\\//\/\\///\\]],
    [[ \\//\/                            \/\\//]],
    [[  \/                                  \/ ]],
    [[  /\                                  /\ ]],
    [[ //\\      Neovim IDE with LSP       //\\]],
    [[ \\//                                \\//]],
    [[  \/                                  \/ ]],
    [[  /\                                  /\ ]],
    [[ //\\/\                            /\//\\]],
    [[ \\///\\/\//\\\///\\/\//\\\///\\/\//\\\//]],
    [[  \/\\///\\\//\/\\///\\\//\/\\///\\\//\/ ]],
    [[      \/\\//\/    \/\\//\/    \/\\//\/   ]],
    [[         \/          \/          \/      ]],
}

dashboard.section.buttons.val = {
    dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
    dashboard.button("n", "   New file", ":ene <BAR> startinsert<CR>"),
    dashboard.button("p", "   Find project", ":Telescope project<CR>"),
    dashboard.button("r", "   Recently used files", ":Telescope oldfiles<CR>"),
    dashboard.button("t", "   Find text", ":Telescope live_grep<CR>"),
    dashboard.button("c", "   Configuration", ":e ~/.config/nvim/<CR>"),
    dashboard.button("q", "   Quit", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.section.footer.val = {
    [[ \\///\\/\//\\\///\\/\//\\\///\\/\//\\\//]],
    [[  \/\\///\\\//\/\\///\\\//\/\\///\\\//\/ ]],
    [[      \/\\//\/    \/\\//\/    \/\\//\/   ]],
    [[         \/          \/          \/      ]],
}

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
