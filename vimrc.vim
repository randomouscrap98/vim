"Tabbing should be spaces (since most people want it like that I guess).
"However, they should NOT be spaces for file types that need tabs
set expandtab
set tabstop=3
set shiftwidth=3
autocmd FileType make setlocal noexpandtab
autocmd FileType lex setlocal noexpandtab

"Indenting schemes
set autoindent
filetype plugin indent on

"We all need a happy text editor
set number
"set mouse=a         "Uncomment this if you want mouse support
syntax on
colorscheme calm

"Some filetypes are actually other types, but aren't recognized as such
au BufNewFile,BufRead *.cu set ft=c
au BufNewFile,BufRead *.make set ft=make
au BufNewFile,BufRead *.mustache set ft=html
au BufNewFile,BufRead *nginx*.conf set ft=nginx
au BufNewFile,BufRead *.nginx set ft=nginx
au BufNewFile,BufRead *.ts set ft=javascript

"This is some old stuff yo. I'm probably not even using it anymore
set wildmode=longest,list,full
set wildmenu

"This fixes some garbage automatic sql stuff
let g:omni_sql_no_default_maps = 1

"Automatic text indenting. It's MAGIC!
let g:mytw = 79      "Set your desired text width here
let &tw=g:mytw
autocmd BufNewFile,BufRead * setlocal formatoptions+=tcq
autocmd BufNewFile,BufRead * setlocal formatoptions-=o
autocmd FileType tex,txt,plaintex setlocal formatoptions+=an
autocmd FileType js,html setlocal formatoptions+=tcq

"Function for toggling automatic indenting
function! ToggleAutomaticLineBreak()
   if &tw == 0
      let &tw=g:mytw
      set formatoptions+=t
      echo "Automatic linebreak turned on. Width: " . g:mytw
   else
      set tw=0
      set formatoptions-=t
      echo "Automatic linebreak turned off."
   endif
endfunction

map <F4> :call ToggleAutomaticLineBreak()<CR>

"Some snazzy (get it?) key rewmappings
nmap n nzz
nmap N Nzz
map Q gq
noremap gQ Q

"Airline options. The 'laststatus' bit is an airline bug or something that required
"fixing. I don't know if it affects anything else.
set hidden           "This lets airline tabs be kept in the background
set noshowmode       "This removes the bottom text; makes airline look better.
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_section_b = '%{ShouldAutomaticLineBreak()}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_flake8_args='--ignore=E501'
let g:pymode_lint_checkers = ['pep8']
let g:pymode_python = 'python3'
"let g:syntastic_auto_loc_list = 1
set laststatus=2
"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'

"Function for airline / automatic line break integration
function! ShouldAutomaticLineBreak()
   if &tw == 0
      return ''
   else
      return '*'
   endif
endfunction

set pastetoggle=<F2>
"Extra key mappings for extra functionality. Some are for airline, some are for
"syntastic (which may not work on many systems), but some are just for funsies.
map <F3> :echo 'hi<' . synIDattr(synID(line("."),col("."),1),"name") . 
   \ '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . 
   \ '> lo<' . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . 
   \ '>'<CR>
nmap <F9> :enew<cr>
nmap <F6> :bnext<CR>
nmap <F5> :bprevious<CR>
nmap <F10> :bp <BAR> bd #<CR>
nmap <F12> :TagbarToggle<CR>
nmap <F8> :SyntasticCheck<CR>
nmap + :lnext<CR>
nmap - :lprev<CR>
map <S-BS> <Nop>

"A function to hide the statusbar. But it's pretty useless, because it also
"hides the airline bar. Yuck.
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

nnoremap <S-h> :call ToggleHiddenAll()<CR>

let python_highlight_all = 1

"*****************************************************************
"* The rest is just old tab completion stuff I don't use anymore *
"*****************************************************************

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


