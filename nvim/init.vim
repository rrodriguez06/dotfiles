if !exists('g:vscode')
    let g:nvim_config_root = expand('<sfile>:p:h')
    let g:vim_plug_fpath = expand(stdpath('data') . '/site/autoload/plug.vim')

    call plug#begin()
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'deoplete-plugins/deoplete-clang'
    Plug 'zchee/deoplete-jedi', { 'for': 'python' }
    Plug 'Shougo/neco-vim', { 'for': 'vim' }
    Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
    Plug 'jeetsukumaran/vim-pythonsense'
    Plug 'machakann/vim-swap'

    Plug 'justinmk/vim-sneak'
    Plug 'romainl/vim-cool'
    Plug 'osyo-manga/vim-anzu'
    Plug 'haya14busa/vim-asterisk'

    Plug 'lifepillar/vim-gruvbox8'
    Plug 'srcery-colors/srcery-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'

    Plug 'itchyny/vim-highlighturl'

    Plug 'majutsushi/tagbar', { 'on': ['TagbarToggle', 'TagbarOpen'] }

    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'

    Plug '907th/vim-auto-save'

    Plug 'dense-analysis/ale'
    Plug 'sbdchd/neoformat', { 'on': 'Neoformat' }

    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim', { 'on': 'GV' }

    Plug 'michaeljsmith/vim-indent-object'

    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

    Plug 'scrooloose/nerdtree'

    Plug 'x4m3/vim-epitech'

    call plug#end()

    let mapleader = ','

    nmap <silent> <leader>q :NERDTreeToggle<CR>
    nmap <silent> <leader>h :TekAddHeader<CR>

    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

    set number relativenumber

    set mouse=a

    set undofile

    set background=dark
    let g:gruvbox_italics=1
    let g:gruvbox_italicize_strings=1
    let g:gruvbox_filetype_hi_groups = 0
    let g:gruvbox_plugin_hi_groups = 0
    colorscheme gruvbox8

    """""""""""" PLUGINS SETTINGS """"""""""""
    let g:deoplete#enable_at_startup = 1
    call deoplete#custom#source('_', 'max_menu_width', 80)
    call deoplete#custom#source('_', 'min_pattern_length', 1)
    call deoplete#custom#source('_', { 'filetype': ['python'], 'disabled_syntaxes': ['Comment'] })
    call deoplete#custom#option('ignore_sources', { '_': ['around', 'buffer', 'tag'] })
    call deoplete#custom#option('max_list', 30)
    call deoplete#custom#option('num_processes', 16)
    call deoplete#custom#option('auto_complete_delay', 100)
    call deoplete#custom#option('auto_complete', v:true)

    let g:UltiSnipsExpandTrigger='<c-j>'
    let g:UltiSnipsEnableSnipMate = 0
    let g:UltiSnipsJumpForwardTrigger='<c-j>'
    let g:UltiSnipsJumpBackwardTrigger='<c-k>'
    let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my_snippets']

    let g:deoplete#sources#jedi#show_docstring = 0
    let g:deoplete#sources#jedi#server_timeout = 50
    let g:deoplete#sources#jedi#ignore_errors = 1

    let g:jedi#completions_enabled = 0
    let g:jedi#show_call_signatures = '0'

    let g:sneak#label = 1
    nmap f <Plug>Sneak_s
    xmap f <Plug>Sneak_s
    onoremap <silent> f :call sneak#wrap(v:operator, 2, 0, 1, 1)<CR>
    nmap F <Plug>Sneak_S
    xmap F <Plug>Sneak_S
    onoremap <silent> F :call sneak#wrap(v:operator, 2, 1, 1, 1)<CR>
    let g:sneak#s_next = 1

    nmap n <Plug>(anzu-n-with-echo)zzzv
    nmap N <Plug>(anzu-N-with-echo)zzzv
    let g:anzu_search_limit = 500000
    let g:anzu_status_format = '/%p [%i/%l]'

    nmap *  <Plug>(asterisk-z*)
    nmap #  <Plug>(asterisk-z#)
    xmap *  <Plug>(asterisk-z*)
    xmap #  <Plug>(asterisk-z#)

    nnoremap <silent> <Space>t :TagbarToggle<CR>
    let g:md_ctags_bin=fnamemodify(g:nvim_config_root.'/tools/markdown2ctags.py', ':p')
    let g:tagbar_type_markdown = {'ctagstype': 'markdown', 'ctagsbin' : g:md_ctags_bin, 'ctagsargs' : '-f - --sort=yes', 'kinds' : [ 's:sections', 'i:images' ], 'sro' : '|', 'kind2scope' : { 's' : 'section', }, 'sort': 0, }

    let g:auto_save = 1
    let g:auto_save_events = ['InsertLeave', 'TextChanged']
    let g:auto_save_silent = 0

    let g:ale_linters = { 'python': ['pylint'], 'vim': ['vint'], 'cpp': ['clang'], 'c': ['clang'] }
    let g:ale_linters_explicit = 1
    let g:ale_sign_error = 'x'
    let g:ale_sign_warning = '!'

    let g:neoformat_enabled_python = ['black', 'yapf']
    let g:neoformat_cpp_clangformat = { 'exe': 'clang-format', 'args': ['--style="{IndentWidth: 4}"'] }
    let g:neoformat_c_clangformat = { 'exe': 'clang-format', 'args': ['--style="{IndentWidth: 4}"'] }
    let g:neoformat_enabled_cpp = ['clangformat']
    let g:neoformat_enabled_c = ['clangformat']

    let g:signify_vcs_list = [ 'git' ]
    let g:signify_sign_change = '~'


    let g:airline_theme = 'term'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
    let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline#extensions#tabline#buffer_nr_format = '%s. '
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#vista#enabled = 1
    let g:airline#extensions#anzu#enabled = 0
    let g:airline_skip_empty_sections = 1
    let g:airline_powerline_fonts = 0
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline#extensions#hunks#non_zero_only = 1
    let g:airline_highlighting_cache = 1

    if exists('g:started_by_firenvim') && g:started_by_firenvim
        set laststatus=0 nonumber noruler noshowcmd
        let g:firenvim_config = { 'globalSettings': { 'alt': 'all',  }, 'localSettings': { '.*': { 'cmdline': 'neovim', 'priority': 0, 'selector': 'textarea', 'takeover': 'never', }, } }
        augroup firenvim
            autocmd!
            autocmd BufEnter *.txt setlocal filetype=markdown
        augroup END
    endif
else
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    
    let mapleader = ','
    
    colorscheme gruvbox8
endif
