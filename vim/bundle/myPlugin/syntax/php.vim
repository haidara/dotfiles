
" syn include @htmlJavaScript syntax/javascript.vim
" syn region  javaScript start=+<script[^>]*>+ keepend end=+</script>+me=s-1 contains=@htmlJavaScript
" "
" " " CSS 
" " syn include @htmlCSS syntax/css.vim
" " " syn region  css start=+<style[^>]*>+ end=+</style>+ contains=@htmlCSS
" " syn region cssStyle start=+<style+ keepend end=+</style>+ contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc

"   " embedded style sheets
"   syn keyword htmlArg           contained media
"   syn include @htmlCss syntax/css.vim
"   unlet b:current_syntax
"   syn region cssStyle start=+<style+ keepend end=+</style>+ contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc
"   syn match htmlCssStyleComment contained "\(<!--\|-->\)"
"   syn region htmlCssDefinition matchgroup=htmlArg start='<style"' keepend matchgroup=htmlString end='/style>' contains=css.*Attr,css.*Prop,cssComment,cssLength,cssColor,cssURL,cssImportant,cssError,cssString,@htmlPreproc

