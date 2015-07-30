" Vim color file - toys
" Created by CJ - 2015
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "toys"

" Function colors
hi Function guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi! link Define         Function
hi! link cDefine        Function
hi! link TypeDef        Function
hi! link StorageClass   Function
hi! link Directory      Function
hi! link Structure      Function

" Keyword colors
hi Keyword guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=136 ctermbg=NONE cterm=bold
hi! link Conditional    Keyword
hi! link Statement      Keyword
hi! link Operator       Keyword

" Type colors
hi Type guifg=#008787 guibg=NONE guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
hi! link Identifier     Type
hi! link MakeTarget     Type

" Number colors
hi Number guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Float guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=31 ctermbg=NONE cterm=NONE
hi! link Boolean        Number
hi! link Constant       Number
hi! link Include        Number
hi! link PreProc        Number

" String colors
hi String guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi! link PreCondit      String

" Delimeter colors
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE

" Comment colors
hi Comment guifg=#005f87 guibg=NONE guisp=NONE gui=italic ctermfg=24 ctermbg=NONE cterm=NONE

" Label colors
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=130 ctermbg=NONE cterm=bold
hi! link Character      Label

" Special colors
hi Special guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=96 ctermbg=NONE cterm=bold

" Error or Unknown colors
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi! link cFormat        Error
hi! link SpellBad       Error

" Important colors
hi Todo guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=189 ctermbg=124 cterm=NONE
hi! link SpellCap       Todo

" UI colors
hi LineNr guifg=#d7af00 guibg=NONE guisp=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=bold
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=166 ctermbg=NONE cterm=bold
hi Normal guifg=#d0d0d0 guibg=#192224 guisp=#192224 gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi! link Title          Normal
hi SignColumn ctermfg=237 ctermbg=52

" Diff appendages 
hi DiffChange ctermbg=52
hi DiffText ctermbg=88
hi DiffAdd ctermbg=235
hi DiffDelete ctermbg=23

"--shell--
hi def link shOperator     String
hi def link shRange        Function
hi def link shRedir        Function
hi def link shDerefVar     Identifier

"--php--
hi def link phpParent      Delimiter
hi def link phpVarSelector Type
hi def link phpFunction    Function

"--javascript--
hi def link jsParens       Delimiter 
hi def link jsFuncParens   Delimiter 
hi def link jsBraces       Delimiter
hi def link jsFuncBraces   Delimiter 
hi def link jsBrackets     Operator
hi def link jsFuncCall     Function

" Unsorted stuff (eventually should be removed)
"hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
"hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
"hi TabLineSel guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=bold ctermfg=235 ctermbg=1 cterm=bold
"hi StatusLineNC guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
"hi ErrorMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
"hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
"hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
""""hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi StatusLine guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=bold ctermfg=235 ctermbg=1 cterm=bold
"hi PMenuSel guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
"hi Search guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=174 cterm=NONE
"hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi TabLineFill guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
"hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
"hi ModeMsg guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
"hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
""""hi cFormat guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
"hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
"hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
"hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
"hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi Exception guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
"hi Cursor guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
"hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi PMenu guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
"hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
"hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi Repeat guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=136 ctermbg=NONE cterm=bold
"hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi TabLine guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
""""hi shDerefVar guifg=#008787 guibg=NONE guisp=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold
