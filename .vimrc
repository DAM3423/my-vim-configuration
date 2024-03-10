call plug#begin('~/.vim/plugged')

" Existing plugins
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'posva/vim-vue'

" Add indentLine plugin
Plug 'Yggdroot/indentLine'

call plug#end()

" Existing configurations

" Add indentLine settings below
" Example customization (uncomment and modify as needed):
" let g:indentLine_char = '|'
" let g:indentLine_color_gui = '#A4E57E'

" Automatically open NERDTree when Vim starts
autocmd vimenter * NERDTree

" Close Vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set the One Dark Pro color scheme
syntax enable
set background=dark
colorscheme onedark

" Key Mapping
nnoremap <silent> <C-o> :Files<CR>
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :Rg<CR>
