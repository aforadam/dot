

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'franbach/miramare'
call plug#end()

set number
set ruler
set mouse=a
set scrolloff=20

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
colorscheme miramare 
let g:miramare_transparent_background=1
let g:airline_theme = 'miramare'
let g:deus_termcolors=256

syntax on
highlight Comment ctermfg=green
autocmd ColorScheme * highlight Normal ctermbg=None
autocmd ColorScheme * highlight NonText ctermbg=None

set encoding=UTF-8

set clipboard=unnamedplus
set clipboard=unnamed

map <c-c> <plug>NERDCommenterComment  
map <c-v> <plug>NERDCommenterUncomment 

set autoindent
set smartindent
set shiftwidth=4

map <c-e> :FZF<CR>
map <c-;> <c-w>w

filetype plugin on

augroup python
    autocmd!
    autocmd FileType python setlocal noexpandtab tabstop=4
augroup end

packloadall
