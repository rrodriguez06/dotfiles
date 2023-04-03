local packer = require("packer")

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
        prompt_border = "single",
    },
    auto_clean = true,
    compile_on_sync = true,
}

return packer
