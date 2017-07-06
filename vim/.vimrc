execute pathogen#infect()
syntax on
set laststatus=2
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:molokai_original = 1
colorscheme molokai
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMapOpenInTab='\r'
let g:airline#extensions#tabline#enabled = 1
map <C-n> :NERDTreeToggle<CR>
" F11 to toggle paste mode
map <F11> :set invpaste<CR>
set pastetoggle=<F11>
"set mouse=a
set expandtab
set shiftwidth=2
set softtabstop=2
set number
let mapleader = ","
let g:table_mode_corner="|"
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'z' : [ promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}
