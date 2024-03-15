call plug#begin('~/.vim/plugged')

filetype plugin indent on

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'posva/vim-vue'
Plug 'Yggdroot/indentLine'

call plug#end()

" Add indentLine settings below
let g:indentLine_char = '|'
let g:indentLine_color_gui = '#A4E57E'

" Automatically open NERDTree when Vim starts
autocmd vimenter * NERDTree

" Close Vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set the One Dark Pro color scheme
syntax enable
set background=dark
colorscheme onedark
highlight LineNr ctermfg=Yellow
set hlsearch

set tabstop=4      " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4   " Number of spaces to use for each step of (auto)indent
set expandtab      " Use spaces instead of tabs

" Key Mapping
nnoremap <silent> <C-o> :Files<CR>
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :Rg<CR>
