set dictionary+=~/.vim/php.words
set dictionary+=~/.vim/html.words
set complete+=k
"set omnifunc=phpcomplete#CompletePHP

"set keywordprg=/home/haidara/bin/phpdoc
"set keywordprg=google-chrome
set nowrap
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
":imap ( ()<Esc>i
":imap < <><Esc>i
":imap " ""<Esc>i
":imap { {<cr><tab><cr>}<Esc>ka

""imap ss $
imap <c-bs> <c-w>

"let php_minlines=1000
let php_sql_query=1
let php_htmlInStrings=1
"let php_folding=1
""set cindent
setlocal foldmethod=manual
" Turn on PHP fast folds
"EnableFastPHPFolds


