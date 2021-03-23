set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set hidden
set number
set relativenumber
set inccommand=split

" ESQUEMA DE CORES
colorscheme gruvbox
" Transparência do Background
hi Normal guibg=NONE ctermbg=NONE

" Ativa por padrão a exibição de arquivos e pastas ocultos no NERDTree
let NERDTreeShowHidden=1
nnoremap <C-o> :NERDTreeToggle <cr>
nnoremap <C-p> :Files <cr>
nnoremap <C-s> :wq! <cr>
nnoremap <C-w> :w! <cr>
nnoremap <C-q> :q! <cr>
nnoremap <C-a> :qa! <cr>

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = ' ☰ '
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.linenr = 'LN'

let g:airline_theme='base16-spacemacs'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

