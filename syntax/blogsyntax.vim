"--- ---
" for Vimpress blog original syntax
"--- ---

" 基本設定読み込み markdown をベース
set syntax=markdown

" header部の色
sy match  blogeditorComment   '^".*$'
sy match  blogeditorEntry     "^ *[0-9]*\t.*$"
sy match  blogeditorIdent     '^".*:\s'
hi link blogeditorComment     Comment
hi link blogeditorEntry       Directory
hi link blogeditorIdent       Function

hi link mkdLink               NONE

" URLリンク 
syntax region mkdLink matchgroup=mkdDelimiter start="\!\?\["  end="\]\ze\s*[[(]" contains=@Spell nextgroup=mkdURL,mkdID skipwhite
    syntax region mkdID   matchgroup=mkdDelimiter start="\["      end="\]" contained
    syntax region mkdURL  matchgroup=mkdDelimiter start="("       end=")"  contained
hi link mkdLink               htmlLink

" 自前blog Codecolor 内を目立たない色に扱う
syntax region mkdCC   matchgroup=mkdDelimiter start="\[cc.*\]"  end="\[\/cc\]"
hi link mkdCC                 Comment

" その他の色
hi link htmlH1                Typedef
hi link mkdListItem           Operator
hi link mkdLineBreak          Underlined

" 独自設定で設定済みにして 本来のblogsyntaxは読み込まない
let b:current_syntax = "blogsyntax"


