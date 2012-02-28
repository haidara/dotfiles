" set ft=php.html
" set dictionary+=~/.vim/php.words
set dictionary+=~/.vim/bundle/myPlugin/php.words
set dictionary+=~/.vim/html.words
" set dictionary+=~/Mounts/emr/www/tags
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

let php_minlines=10000
let php_sql_query=1
let php_htmlInStrings=1
"let php_folding=1
""set cindent
setlocal foldmethod=manual
" Turn on PHP fast folds
"EnableFastPHPFolds

set commentstring=//\ %s
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
imap ss $
imap jj $j

" map K 			:silent !google-chrome "http://www.php.net/"<cword><cr>
map <silent> <F4> :!ctags -f ./tags --langmap="php:+.inc" -h ".php.inc" -R --totals=yes --tag-relative=yes --PHP-kinds=+cf-v .<cr>
map <leader>g :execute "grep -R --include '*.php' --include '*.js' " . expand("<cword>") . " *" <CR> :copen<cr>


" set ofu=syntaxcomplete#Complete
" set ofu=phpcomplete#phpComplete
