set termguicolors

:lua require('plugins/plug')

" :lua require('plugins/config/coc')
:lua require('plugins/config/hop')
:lua require('plugins/config/comment')
:lua require('plugins/config/telescope')
:lua require('plugins/config/treesitter')

:lua require('cores/options')
:lua require('cores/mappings')

filetype plugin indent on

syntax on
colorscheme palenight
set background=dark

filetype plugin on

inoremap <silent><script><expr> <C-A> copilot#Accept("\<CR>")

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#error_symbol = 'Err: '
let g:airline#extensions#coc#warning_symbol = 'Warn: '
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_powerline_fonts = 1

let NERDTreeQuitOnOpen=1

let ayucolor = "mirage"
