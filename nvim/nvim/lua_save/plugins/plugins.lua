return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
    }

    use 'feline-nvim/feline.nvim'

    use 'frenzyexists/aquarium-vim'
    use 'sainnhe/sonokai'
    use 'lifepillar/vim-gruvbox8'
    use 'srcery-colors/srcery-vim'
    use 'sainnhe/gruvbox-material'
    use 'sickill/vim-monokai'
    use 'ayu-theme/ayu-vim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'kdheepak/lazygit.nvim'

    use 'lewis6991/gitsigns.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use 'lukas-reineke/indent-blankline.nvim'

    use "terrortylor/nvim-comment"

    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' }
    use 'ray-x/navigator.lua'
    use 'ray-x/lsp_signature.nvim'

    -- use 'jayli/vim-easycomplete'

    -- use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    -- use { 'ms-jpq/coq.thirdparty', branch = '3p' }
    -- use { 'ms-jpq/coq_nvim', branch = 'coq' }

    -- use {
    --     'ms-jpq/coq_nvim',
    --     requires = {
    --         { 'ms-jpq/coq.artifacts' },
    --         { 'ms-jpq/coq.thirdparty' },
    --     }
    -- }

    -- use { 'hrsh7th/nvim-cmp',
    --     requires = {
    --         'hrsh7th/cmp-buffer',
    --         'hrsh7th/cmp-nvim-lsp',
    --         'quangnguyen30192/cmp-nvim-ultisnips',
    --         'hrsh7th/cmp-nvim-lua',
    --         'octaltree/cmp-look',
    --         'hrsh7th/cmp-path',
    --         'hrsh7th/cmp-calc',
    --         'f3fora/cmp-spell',
    --         'hrsh7th/cmp-emoji'
    --     }
    -- }

    -- use 'onsails/lspkind.nvim'

    use 'nvim-treesitter/nvim-treesitter'

    use 'luochen1990/rainbow'

    use 'voldikss/vim-floaterm'
    use 'jiangmiao/auto-pairs'

    -- use { 'michaelb/sniprun', run = 'bash ./install.sh' }

    use 'simrat39/symbols-outline.nvim'

    -- use 'pseewald/vim-anyfold'

    use { 'anuvyklack/pretty-fold.nvim', requires = 'anuvyklack/nvim-keymap-amend' }

end)
