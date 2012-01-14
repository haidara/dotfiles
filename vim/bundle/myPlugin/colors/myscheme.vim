" Vim color file
" Maintainer:	Thorsten Maerz <info@netztorte.de>
" Last Change:	2006 Dec 07
" grey on black
" optimized for TFT panels

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=Grey80	guibg=Black
highlight Search     guifg=Black	guibg=Red	gui=bold
highlight Visual     guifg=#404040			gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Cursorline     guibg=grey20	
highlight Special    guifg=Orange
"highlight Comment    guifg=#80a0ff
highlight Comment    guifg=Grey30
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=Yellow			gui=NONE
highlight Type						gui=NONE

" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=white	cterm=bold
highlight Visual     cterm=reverse	
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=LightGrey
highlight StatusLine ctermfg=blue		ctermbg=white
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type			 cterm=NONE
highlight Folded	ctermbg=black ctermfg=Brown
"highlight Normal     ctermfg=LightGrey	ctermbg=Black
"highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
"highlight Visual					cterm=reverse
"highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
"highlight Special    ctermfg=Brown
"highlight Comment    ctermfg=Blue
"highlight StatusLine ctermfg=blue	ctermbg=white
"highlight Statement  ctermfg=Yellow			cterm=NONE
"highlight Type						cterm=NONE

"hi Folded	guibg=grey30 guifg=gold

hi Folded	guibg=black guifg=Grey40
hi FoldColumn	guibg=grey30 guifg=LightGrey

hi LineNr guifg=Grey40 guibg=black
hi Pmenu ctermfg=white ctermbg=LightGrey
hi Pmenu guifg=white guibg=Grey20

hi PmenuSel guifg=black guibg=white
hi PmenuSel ctermfg=black ctermbg=white

