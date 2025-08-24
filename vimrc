"==========================
" C/C++ Vim config
" Author: Berry484
"==========================

"--------------------------
" Plugins
"--------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/vim-cursorword'

call plug#end()
"--------------------------
" Encoding
"--------------------------
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

"--------------------------
" Basic editing
"--------------------------
set nocompatible        " Disable vi compatibility
set autoindent          " Use previous line's indentation
set smartindent         " Smart indentation for C
set tabstop=4           " Tab width is 4 spaces
set shiftwidth=4        " Indent also with 4 spaces
set expandtab           " Expand tabs to spaces
set textwidth=120       " Wrap lines at 120 chars
set number              " Show line numbers
set showmatch           " Highlight matching braces
set virtualedit=onemore " Allow cursor beyond end of line in Visual mode
set t_Co=256            " 256-color support

"--------------------------
" Cursor
"--------------------------
" Normal mode: block cursor
let &t_EI = "\e[2 q"
" Insert mode: vertical bar cursor
let &t_SI = "\e[6 q"
highlight CursorColumn ctermbg=236 guibg=#2c2c2c

"--------------------------
" Colorscheme / Appearance
"--------------------------
set background=dark
syntax on
colorscheme onedark

" Line numbers
highlight LineNr ctermfg=248 guifg=#aaaaaa
highlight CursorLineNr ctermfg=yellow guifg=#ffff00

" Strings
highlight String ctermbg=NONE guibg=NONE

" Highlight standard C library functions
autocmd FileType c,cpp syntax keyword cFunction malloc calloc free realloc
highlight link cFunction Function

" Make comments brighter
highlight Comment ctermfg=108 guifg=#89b06f


"--------------------------
" NERDTree
"--------------------------
autocmd vimenter * NERDTree
autocmd vimenter * if argc() > 0 | NERDTreeFind | endif
nnoremap <C-n> :NERDTreeToggle<CR>

"--------------------------
" Tags (for C++ completion/navigation)
"--------------------------
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

"--------------------------
" Diff / Spell settings
"--------------------------
if &diff
    " Diff mode mappings
    map <M-Down> ]c
    map <M-Up> [c
    map <M-Left> do
    map <M-Right> dp
    map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
    " Spell settings
    setlocal spell spelllang=en
    set spellfile=~/.vim/spellfile.add
    map <M-Down> ]s
    map <M-Up> [s
endif

