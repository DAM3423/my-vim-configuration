call plug#begin('~/.vim/plugged')
 
" NERDTree for project navigation
Plug 'preservim/nerdtree'
 
 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
 
" One Dark Pro Color Scheme
Plug 'joshdick/onedark.vim'
 
call plug#end()
 
" Automatically open NERDTree when Vim starts
autocmd vimenter * NERDTree
 
" Close Vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 
" Set the One Dark Pro color scheme
syntax enable
set background=dark
colorscheme onedark
 
" Vue JS
Plug 'posva/vim-vue'
 
" Key Mapping
"
" control + o to open the file explorer
nnoremap <silent> <C-o> :Files<CR>
 
" control + n to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>
