local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')

Plug('feline-nvim/feline.nvim')
Plug('frenzyexists/aquarium-vim')
Plug('sainnhe/sonokai')
Plug('lifepillar/vim-gruvbox8')
Plug('srcery-colors/srcery-vim')
Plug('sainnhe/gruvbox-material')
Plug('sickill/vim-monokai')
Plug('ayu-theme/ayu-vim')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-project.nvim')

Plug('kdheepak/lazygit.nvim')

Plug('lewis6991/gitsigns.nvim')

Plug('lukas-reineke/indent-blankline.nvim')

Plug('terrortylor/nvim-comment')

Plug('neovim/nvim-lspconfig')
Plug('glepnir/lspsaga.nvim')
Plug('williamboman/nvim-lsp-installer')
Plug('SirVer/ultisnips')
Plug('honza/vim-snippets')

Plug('ms-jpq/coq.artifacts')
Plug('ms-jpq/coq.thirdparty', { module = 'coq_3p' })
Plug('ms-jpq/coq_nvim')


Plug('ray-x/guihua.lua', { run = 'cd lua/fzy && make' })
Plug('ray-x/navigator.lua')
Plug('ray-x/lsp_signature.nvim')

Plug('nvim-treesitter/nvim-treesitter')

Plug('luochen1990/rainbow')

Plug('voldikss/vim-floaterm')

Plug('jiangmiao/auto-pairs')

Plug('simrat39/symbols-outline.nvim')

Plug('pseewald/vim-anyfold')

-- Plug('anuvyklack/nvim-keymap-amend')
-- Plug('anuvyklack/pretty-fold.nvim')

Plug('goolord/alpha-nvim')

Plug('folke/todo-comments.nvim')

Plug('phaazon/hop.nvim')

vim.call('plug#end')
