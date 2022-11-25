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
let g:colors_name = "haloo_new1"

" Function colors (purple)
hi Function ctermfg=104 ctermbg=NONE cterm=bold
hi! link Define         Function
hi! link cDefine        Function
hi! link TypeDef        Function
hi! link StorageClass   Function
hi! link Directory      Function
hi! link Structure      Function

" Keyword colors (yellow) (no, green)
hi Keyword ctermfg=35 ctermbg=NONE cterm=bold
hi! link Conditional    Keyword
hi! link Statement      Keyword
hi! link Operator       Keyword

" Type colors (blue)
hi Type ctermfg=38 ctermbg=NONE cterm=bold
hi! link Identifier     Type
hi! link MakeTarget     Type

" Number colors (green) (no, pink)
hi Number ctermfg=176 ctermbg=NONE cterm=NONE
" hi Number ctermfg=71 ctermbg=NONE cterm=NONE
" hi Float ctermfg=74 ctermbg=NONE cterm=NONE
hi! link Float          Number
hi! link Boolean        Number
hi! link Constant       Number
hi! link Include        Number
hi! link PreProc        Number

" String colors (red)
hi String ctermfg=168 ctermbg=NONE cterm=NONE
" hi String ctermfg=204 ctermbg=NONE cterm=NONE
hi! link PreCondit      String
hi! link Quote          String

" Delimeter colors (like type but slightly off? Still blue)
hi Delimiter ctermfg=36 ctermbg=NONE cterm=NONE
" hi Delimiter ctermfg=51 ctermbg=NONE cterm=NONE
hi! link Delimeter      Delimiter 

" Comment colors (whatever)
hi Comment ctermfg=31 ctermbg=236 cterm=NONE
" hi Comment ctermfg=60 ctermbg=NONE cterm=NONE

" Label colors (orange)
hi Label ctermfg=174 ctermbg=NONE cterm=bold
" hi Label ctermfg=173 ctermbg=NONE cterm=bold
hi! link Character      Label

" Special colors (like function but slightly off? Still purple)
hi Special ctermfg=111 ctermbg=NONE cterm=bold

" Error or Unknown colors
hi Error ctermfg=248 ctermbg=88 cterm=NONE
hi! link cFormat        Error
hi! link SpellBad       Error

" Important colors
hi Todo ctermfg=189 ctermbg=124 cterm=NONE
hi! link SpellCap       Todo

" UI colors
hi LineNr ctermfg=237 ctermbg=NONE cterm=bold
" Orange
hi MatchParen ctermfg=166 ctermbg=NONE cterm=bold 
hi Normal ctermfg=252 ctermbg=235 cterm=NONE
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
" hi def link jsParens       Delimiter 
" hi def link jsFuncParens   Delimiter 
" hi def link jsBraces       Delimiter
" hi def link jsFuncBraces   Delimiter 
" hi def link jsBrackets     Operator
" hi def link jsFuncCall     Function
hi def link jsonKeywordMatch     Function
hi def link javaScriptExceptions    Keyword
" hi def link javaScriptParens  Delimiter

"--perl--
hi def link perlBraces     Delimiter

"--C/C++--
hi def link cBlock         Delimiter

"--Rust--
hi def link rustMacro      Special
hi def link rustModPath    Type
hi def link rustStorage    Keyword
hi def link rustSigil      Label
hi def link rustEscape     Label
" hi def link rustLifetime   Delimiter
hi def link rustLifetime   Label

hi def link tomlTable      Function
" hi def link rustBoxPlacementBalance    Keyword
" hi rustFoldBraces ctermfg=104 ctermbg=NONE cterm=bold
" hi rustOperator   Operator
