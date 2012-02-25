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
colorscheme murphy
"let g:colors_name = "torte"
let g:colors_name = "torte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=White	guibg=Grey10
highlight Search     guifg=Black	guibg=Red	  gui=bold
highlight Visual     guifg=#404040			      gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Cursorline              guibg=grey20	
highlight Special    guifg=Orange
"highlight Comment    guifg=#80a0ff
highlight Comment    guifg=Grey40
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=Yellow			        gui=NONE
highlight Type						                    gui=NONE

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
hi Pmenu ctermfg=black ctermbg=white
hi Pmenu guifg=black guibg=white

hi PmenuSel guifg=black guibg=lightblue
hi PmenuSel ctermfg=black ctermbg=lightblue gui=bold

