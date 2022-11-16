" Vim color file - pastel
" Created by CJ - 2015
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "calm"

" Function colors (purple)
hi Function guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=104 ctermbg=NONE cterm=bold
hi! link Define         Function
hi! link cDefine        Function
hi! link TypeDef        Function
hi! link StorageClass   Function
hi! link Directory      Function
hi! link Structure      Function

" Keyword colors (yellow)
hi Keyword guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=179 ctermbg=NONE cterm=bold
hi! link Conditional    Keyword
hi! link Statement      Keyword
hi! link Operator       Keyword

" Type colors (blue)
hi Type guifg=#008787 guibg=NONE guisp=NONE gui=bold ctermfg=38 ctermbg=NONE cterm=bold
hi! link Identifier     Type
hi! link MakeTarget     Type

" Number colors (green)
hi Number guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi Float guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi! link Boolean        Number
hi! link Constant       Number
hi! link Include        Number
hi! link PreProc        Number

" String colors (red)
hi String guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi! link PreCondit      String
hi! link Quote          String

" Delimeter colors (like type but slightly off? Still blue)
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=36 ctermbg=NONE cterm=NONE
hi! link Delimeter      Delimiter 

" Comment colors (whatever)
hi Comment guifg=#005f87 guibg=NONE guisp=NONE gui=italic ctermfg=60 ctermbg=NONE cterm=NONE

" Label colors (orange)
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=173 ctermbg=NONE cterm=bold
hi! link Character      Label

" Special colors (like function but slightly off? Still purple)
hi Special guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=104 ctermbg=NONE cterm=bold

" Error or Unknown colors
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi! link cFormat        Error
hi! link SpellBad       Error

" Important colors
hi Todo guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=189 ctermbg=124 cterm=NONE
hi! link SpellCap       Todo

" UI colors
hi LineNr guifg=#d7af00 guibg=NONE guisp=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=bold
" Orange
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=166 ctermbg=NONE cterm=bold 
hi Normal guifg=#d0d0d0 guibg=#192224 guisp=#192224 gui=NONE ctermfg=253 ctermbg=233 cterm=NONE
hi! link Title          Normal
hi SignColumn ctermfg=237 ctermbg=52

" Diff appendages 
hi DiffChange ctermbg=52
hi DiffText ctermbg=88
hi DiffAdd ctermbg=235
hi DiffDelete ctermbg=23

" Autocomplete menu
hi Pmenu ctermbg=233 ctermfg=244
hi PmenuSel ctermbg=238 ctermfg=250

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
hi def link jsonKeywordMatch     Function

"--perl--
hi def link perlBraces     Delimiter

"--C/C++--
hi def link cBlock         Delimiter

