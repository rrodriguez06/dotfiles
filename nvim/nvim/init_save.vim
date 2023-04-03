set termguicolors

:lua require('plugins/plug')

let g:sonokai_style = 'atlantis'
let g:sonokai_enale_italic = 1
let g:sonokai_spell_foreground ='colored'
let g:sonokai_diagnostic_text_highlight = 1
let g:sonokai_diagnostic_line_highlight = 1

syntax enable
colorscheme sonokai
set background=dark

" filetype plugin indent on
" autocmd Filetype * AnyFoldActivate
" augroup anyfold
"   autocmd!
"   autocmd Filetype * AnyFoldActivate
" augroup END

" set foldlevel=99


":lua require('plugins/packerInit')
":lua require('plugins/plugins')

:lua require('plugins/config/feline')
:lua require('plugins/config/gitsigns')
:lua require('plugins/config/lazygit')
:lua require('plugins/config/lsp')
:lua require('plugins/config/nvimtree')
" :lua require('plugins/config/sniprun')
:lua require('plugins/config/telescope')
:lua require('plugins/config/treesitter')
:lua require('plugins/config/comment')
:lua require('plugins/config/symbols_outline')
" :lua require('plugins/config/prettyfold')
:lua require('plugins/config/alpha')
:lua require('plugins/config/todo_comments')
:lua require('plugins/config/hop')

:lua require('cores/options')
:lua require('cores/mappings')

inoremap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
