" James's VIM RC
" Basic options --------------------------------- {{{
set hlsearch
set smarttab
set shiftwidth=3
set ai "Auto Indent
set si "Smart Indent
set ruler
set incsearch
set number
set showmatch
set encoding=utf-8
set laststatus=2
set vb
set foldmethod=marker

filetype plugin on
filetype indent on

colorscheme xoria256

set nobackup
set nowb
set noswapfile
" }}}
" Key remapping --------------------------------- {{{
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap H <Home>
nnoremap L <End>
nmap <leader>w :w!<cr>

set pastetoggle=<F2>

"Space search
map <space> /
map <c-space> ?

syntax enable

nmap <C-b> :NERDTreeToggle<cr>
" }}}
" Airline options ------------------------------- {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set timeoutlen=25
" }}}
" Syntastic options ----------------------------- {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Hacks ----------------------------------------- {{{
if has('unix')
   set t_Co=256
endif

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

execute pathogen#infect()
" }}}
