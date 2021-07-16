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

set termguicolors

syntax enable
colorscheme monokai
syntax on

set tabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')
"Plug 'junegunn/vim-easy-align'
"Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'jiangmiao/auto-pairs'
"Plug 'xavierd/clang_complete'
Plug 'preservim/tagbar'
"Plug 'sbdchd/neoformat'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline_theme = 'simple'

let g:airline#extensions#coc#enabled = 1
let g:airline_power_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:clang_use_library = 1
"let g:clang_library_path='/usr/lib/llvm-10/lib'

"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

nmap <silent><nowait> <space>gy <Plug>(coc-type-definition)
nmap <silent><nowait> <space>gi <Plug>(coc-implementation)
nmap <silent><nowait> <space>gr <Plug>(coc-references)
nmap <silent><nowait> <space>gd <Plug>(coc-definition)

