" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter='/usr/bin/python'

Plug 'tpope/vim-sensible'

Plug 'arcticicestudio/nord-vim'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']

Plug 'tpope/vim-commentary'

call plug#end()

" Other settings
set nocompatible
colo molokai
filetype plugin indent on
syntax enable

set number
set encoding=utf8

set expandtab
set tabstop=4
set shiftwidth=4

set undolevels=1000

" Remaps
inoremap jk <Esc>
command NT NERDTree
command W w
command Q q
command Wq wq
command WQ wq
command Spongebob au InsertCharPre * if rand()%2 | let v:char = toupper(v:char) | endif
command QQ q!
