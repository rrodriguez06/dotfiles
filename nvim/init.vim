let g:nvim_config_root = expand('<sfile>:p:h')
let g:vim_plug_fpath = expand(stdpath('data') . '/site/autoload/plug.vim')

call plug#begin()
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'aca/completion-tabnine', { 'do': './install.sh' }

    Plug 'justinmk/vim-sneak'
    Plug 'romainl/vim-cool'
    Plug 'osyo-manga/vim-anzu'
    Plug 'haya14busa/vim-asterisk'

    Plug 'lifepillar/vim-gruvbox8'
    Plug 'srcery-colors/srcery-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'

    Plug 'luochen1990/rainbow'

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

    Plug 'scrooloose/nerdtree'

    Plug 'x4m3/vim-epitech'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'preservim/nerdcommenter'

    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'

    Plug 'voldikss/vim-floaterm'
    "Plug 'tibabit/vim-templates'

    Plug 'kdheepak/lazygit.nvim'

    Plug 'cometsong/CommentFrame.vim'

call plug#end()


"------------------------------------------------------------------------------"
"                            NEOVIM SPECIFIC CONFIG                            "
"------------------------------------------------------------------------------"

let mapleader = ','


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ System variables ~~~~~
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

set number relativenumber

set mouse=a

set undofile

set termguicolors

set background=dark


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Colorscheme configurations ~~~~~
let g:gruvbox_italics=1
let g:gruvbox_italicize_strings=1
let g:gruvbox_filetype_hi_groups = 0
let g:gruvbox_plugin_hi_groups = 0
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox8

nnoremap <silent> <A-down> :m+<cr>==
nnoremap <silent> <A-up> :m-2<cr>==


"------------------------------------------------------------------------------"
"                               PLUGINS SETTINGS                               "
"------------------------------------------------------------------------------"

let g:rainbow_active = 1



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Snipets ~~~~~

let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'my_snippets']

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


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Tagbar ~~~~~

nnoremap <silent> <Space>t :TagbarToggle<CR>
let g:md_ctags_bin=fnamemodify(g:nvim_config_root.'/tools/markdown2ctags.py', ':p')
let g:tagbar_type_markdown = {'ctagstype': 'markdown', 'ctagsbin' : g:md_ctags_bin, 'ctagsargs' : '-f - --sort=yes', 'kinds' : [ 's:sections', 'i:images' ], 'sro' : '|', 'kind2scope' : { 's' : 'section', }, 'sort': 0, }

let g:auto_save = 1
let g:auto_save_events = ['InsertLeave', 'TextChanged']
let g:auto_save_silent = 0



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Ale ~~~~~

let g:ale_linters = { 'python': ['pylint'], 'vim': ['vint'], 'cpp': ['clang'], 'c': ['clang'] }
let g:ale_linters_explicit = 1
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Neoformat ~~~~~

let g:neoformat_enabled_python = ['black', 'yapf']
let g:neoformat_cpp_clangformat = { 'exe': 'clang-format', 'args': ['--style="{IndentWidth: 4}"'] }
let g:neoformat_c_clangformat = { 'exe': 'clang-format', 'args': ['--style="{IndentWidth: 4}"'] }
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_change = '~'



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Airline ~~~~~

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



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Completion ~~~~~

if exists('g:started_by_firenvim') && g:started_by_firenvim
    set laststatus=0 nonumber noruler noshowcmd
    let g:firenvim_config = { 'globalSettings': { 'alt': 'all',  }, 'localSettings': { '.*': { 'cmdline': 'neovim', 'priority': 0, 'selector': 'textarea', 'takeover': 'never', }, } }
    augroup firenvim
        autocmd!
        autocmd BufEnter *.txt setlocal filetype=markdown
    augroup END
endif

let g:completion_chain_complete_list = {
    \ 'default': [
    \   {'complete_items': ['lsp', 'snipet', 'tabnine' ]},
    \   {'mode': '<c-p>'},
    \   {'mode': '<c-n>'}
    \]
\}


"------------------------------------------------------------------------------"
"                                   SHORTCUTS                                  "
"------------------------------------------------------------------------------"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <C-s> :BufferPick<cr>

nnoremap <silent> <Space>bd :BufferOrderByDirectory<cr>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<cr>

nnoremap <silent> <C-left> :BufferPrevious<cr>
nnoremap <silent> <C-right> :BufferNext<cr>

nnoremap <silent> <C-q> :BufferClose<cr>

nnoremap <silent> <A-t> :FloatermToggle<cr>

nmap <silent> <leader>q :NERDTreeToggle<CR>
nmap <silent> <leader>h :TekAddHeader<CR>

nnoremap <silent> <leader>lg :LazyGit<cr>

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed
"let g:lazygit_use_neovim_remote = 0


"------------------------------------------------------------------------------"
"                                 LSP SETTINGS                                 "
"------------------------------------------------------------------------------"

set completeopt=menuone,noinsert,noselect

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ LSP generic config ~~~~~

lua require'lspconfig'.pyls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.vimls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.flow.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.html.setup{ on_attach=require'completion'.on_attach }
"lua require'lspconfig'.gopls.setup{ on_attach=require'completion'.on_attach }


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GOPLS specific config ~~~~~
lua <<EOF
  lspconfig = require "lspconfig"
  lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }

  function goimports(timeout_ms)
    local context = { source = { organizeImports = true } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    -- See the implementation of the textDocument/codeAction callback
    -- (lua/vim/lsp/handler.lua) for how to do this properly.
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
    if not result or next(result) == nil then return end
    local actions = result[1].result
    if not actions then return end
    local action = actions[1]

    -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
    -- is a CodeAction, it can have either an edit, a command or both. Edits
    -- should be executed first.
    if action.edit or type(action.command) == "table" then
      if action.edit then
        vim.lsp.util.apply_workspace_edit(action.edit)
      end
      if type(action.command) == "table" then
        vim.lsp.buf.execute_command(action.command)
      end
    else
      vim.lsp.buf.execute_command(action)
    end
  end
EOF

autocmd BufEnter * lua require'completion'.on_attach()
autocmd BufWritePre *.go lua goimports(1000)
