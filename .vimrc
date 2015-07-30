set expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType lex setlocal noexpandtab
"autocmd FileType c,cpp,cs,java set cindent

au BufNewFile,BufRead *.cu set ft=c
au BufNewFile,BufRead *.make set ft=make

set wildmode=longest,list,full
set wildmenu
set tabstop=3
set shiftwidth=3
set autoindent
set tw=79
set formatoptions+=tc
autocmd FileType tex, txt setlocal formatoptions+=a
"set smartindent
filetype plugin indent on
let g:omni_sql_no_default_maps = 1
set number
"set mouse=a
nmap n nzz
nmap N Nzz
map Q gq
noremap gQ Q

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
syntax on

let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:syntastic_always_populate_loc_list = 1
set laststatus=2

set hidden
"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"
"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"
nmap <F9> :enew<cr>
nmap <F6> :bnext<CR>
nmap <F5> :bprevious<CR>
nmap <F10> :bp <BAR> bd #<CR>
nmap <F12> :TagbarToggle<CR>
nmap <F8> :SyntasticCheck<CR>
nmap + :lnext<CR>
nmap - :lprev<CR>
"colorscheme gruvbox
"set bg=dark
colorscheme toys

let s:hidden_all = 0
function! ToggleHiddenAll()
   if s:hidden_all  == 0
      let s:hidden_all = 1
      "set noshowmode
      set noruler
      set laststatus=0
      set noshowcmd
   else
      let s:hidden_all = 0
      "set showmode
      set ruler
      set laststatus=2
      set showcmd
   endif
endfunction

"call ToggleHiddenAll()
set noshowmode
nnoremap <S-h> :call ToggleHiddenAll()<CR>
"colorscheme railscasts
"colorscheme molokai

"let g:jellybeans_use_lowcolor_black = 0
"colorscheme jellybeans

"if &diff
"   " diff mode
"   set diffopt+=iwhite
"endif

"set diffexpr=DiffW()
"function DiffW()
"   let opt = ""
"   if &diffopt =~ "icase"
"      let opt = opt . "-i"
"   endif
"   if &diffopt =~ "iwhite"
"      let opt = opt . "-w" " vim uses -b by default
"   endif
"   silent execute "!diff -a --binary " . opt .
"      \ v:fname_in . " " . v:fname_new . " > " . v:fname_out
"endfunction

"function InsertTabWrapper()
"   let col = col('.') - 1
"   if !col || getline('.')[col - 1] !~ '\k'
"   return "\<tab>"
"   else
"   return "\<c-p>"
"   endif
"endfunction

" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"set completeopt=longest,menuone

" Stuff I found online for tab completion
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' : 
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' : 
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening 
" new menu without changing the text
"inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : 
"   \ '<Esc>i') : '') . '<C-x><C-o><C-r>=pumvisible() ? 
"   \ "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening 
" new menu without changing the text
"inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : 
"   \ '<Esc>i') : '') . '<C-x><C-u><C-r>=pumvisible() ? 
"   \ "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'


