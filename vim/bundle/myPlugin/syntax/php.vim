" highlight css correclty inside php string in between style tags
"
if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
endif
syntax include @textGroupcss syntax/css.vim
" syntax include @textGroupcss after/syntax/css.vim
unlet b:current_syntax
if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
else
  if(exists('b:current_syntax'))
    unlet b:current_syntax
  endif
endif

syntax region textSnipcss
\ matchgroup=textSnipHlcss
\ start="<style" end="</style>"
\ contains=@textGroupcss
\ containedin=ALL
