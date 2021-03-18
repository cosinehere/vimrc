set nocompatible
set number
set nowrap
set cursorline
set ruler
set showcmd
set showmatch

set t_Co=256
set laststatus=2
set backspace=indent,eol,start

syntax enable
colorscheme monokai
syntax on

set tabstop=4

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'xavierd/clang_complete'
Plug 'preservim/tagbar'
call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:clang_use_library = 1
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
