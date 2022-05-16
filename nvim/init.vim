set termguicolors

let g:sonokai_style = 'atlantis'
let g:sonokai_enale_italic = 1
let g:sonokai_spell_foreground ='colored'
let g:sonokai_diagnostic_text_highlight = 1
let g:sonokai_diagnostic_line_highlight = 1

syntax enable
colorscheme sonokai
set background=dark

filetype plugin indent on
autocmd Filetype * AnyFoldActivate

set foldlevel=99

:lua require('plugins/packerInit')
:lua require('plugins/plugins')

":lua require('plugins/config/feline')
":lua require('plugins/config/gitsigns')
":lua require('plugins/config/lazygit')
":lua require('plugins/config/lsp')
":lua require('plugins/config/easycomplete')
":lua require('plugins/config/nvimtree')
":lua require('plugins/config/sniprun')
":lua require('plugins/config/telescope')
":lua require('plugins/config/treesitter')
":lua require('plugins/config/comment')
":lua require('plugins/config/symbols_outline')
":lua require('plugins/config/prettyfold')

":lua require('cores/options')
":lua require('cores/mappings')

inoremap <silent><script><expr> <C-A> copilot#Accept("\<CR>")

" let g:easycomplete_scheme="sharp"

" let g:easycomplete_menu_skin = {
"       \   "buf": {
"       \      "kind":"⚯",
"       \      "menu":"[B]",
"       \    },
"       \   "snip": {
"       \      "kind":"<>",
"       \      "menu":"[S]",
"       \    },
"       \   "dict": {
"       \      "kind":"d",
"       \      "menu":"[D]",
"       \    },
"       \   "tabnine": {
"       \      "kind":"",
"       \    },
"       \ }

" let g:easycomplete_lsp_type_font = {
"       \ 'text' : '⚯',         'method':'m',    'function': 'f',
"       \ 'constructor' : '≡',  'field': 'f',    'default':'d',
"       \ 'variable' : '𝘤',     'class':'c',     'interface': 'i',
"       \ 'module' : 'm',       'property': 'p', 'unit':'u',
"       \ 'value' : '𝘧',        'enum': 'e',     'keyword': 'k',
"       \ 'snippet': '𝘧',       'color': 'c',    'file':'f',
"       \ 'reference': 'r',     'folder': 'f',   'enummember': 'e',
"       \ 'constant':'c',       'struct': 's',   'event':'e',
"       \ 'typeparameter': 't', 'var': 'v',      'const': 'c',
"       \ 'operator':'o',
"       \ 't':'𝘵',   'f':'𝘧',   'c':'𝘤',   'm':'𝘮',   'u':'𝘶',   'e':'𝘦',
"       \ 's':'𝘴',   'v':'𝘷',   'i':'𝘪',   'p':'𝘱',   'k':'𝘬',   'r':'𝘳',
"       \ 'o':"𝘰",   'l':"𝘭",   'a':"𝘢",   'd':'𝘥',
"       \ }

" let g:easycomplete_sign_text = {
"       \   'error':       "◉",
"       \   'warning':     "▲",
"       \   'information': '◎',
"       \   'hint':        '▧'
"       \ }

" let g:easycomplete_colorful = 1
