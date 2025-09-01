"==========================
" C/C++ Vim config
" Author: Berry484
"==========================

"--------------------------
" Plugins
"--------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'LunarWatcher/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/vim-cursorword'
Plug 'octol/vim-cpp-enhanced-highlight'


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
set autoindent
set relativenumber
set number
set nocompatible        " Disable vi compatibility
set smartindent         " Smart indentation for C
set shiftwidth=4        " Indent also with 4 spaces
set tabstop=4           " Tab width is 4 spaces
set expandtab           " Expand tabs to spaces
set textwidth=120       " Wrap lines at 120 chars
set showmatch           " Highlight matching braces
set virtualedit=onemore " Allow cursor beyond end of line in Visual mode
set t_Co=256            " 256-color support

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
" Enchanced highlighting
"--------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_experimental_template_highlight = 1


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
