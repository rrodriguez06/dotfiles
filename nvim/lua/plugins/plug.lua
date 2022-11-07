local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug('frenzyexists/aquarium-vim')
    Plug('sainnhe/sonokai')
    Plug('drewtempelmeyer/palenight.vim')
    Plug('ayu-theme/ayu-vim')

    Plug('nvim-lua/plenary.nvim')
    Plug('nvim-telescope/telescope.nvim')
    Plug('nvim-telescope/telescope-project.nvim')

    Plug('kdheepak/lazygit.nvim')

    Plug('neoclide/coc.nvim', { branch = 'release' })

    Plug('lewis6991/gitsigns.nvim')

    Plug('terrortylor/nvim-comment')

    Plug('luochen1990/rainbow')

    Plug('jiangmiao/auto-pairs')

    Plug('simrat39/symbols-outline.nvim')

    Plug('phaazon/hop.nvim')

    Plug('vim-airline/vim-airline')
    Plug('vim-airline/vim-airline-themes')

    Plug('ryanoasis/vim-devicons')
    Plug('scrooloose/nerdtree')

    Plug('SirVer/ultisnips')
    Plug('honza/vim-snippets')

    Plug('nvim-treesitter/nvim-treesitter')

vim.call('plug#end')
