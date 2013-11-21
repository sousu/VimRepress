"--- ---
" for Vimpress blog original syntax
"--- ---

" ��{�ݒ�ǂݍ��� markdown ���x�[�X
set syntax=markdown

" header���̐F
sy match  blogeditorComment   '^".*$'
sy match  blogeditorEntry     "^ *[0-9]*\t.*$"
sy match  blogeditorIdent     '^".*:\s'
hi link blogeditorComment     Comment
hi link blogeditorEntry       Directory
hi link blogeditorIdent       Function

hi link mkdLink               NONE

" URL�����N 
syntax region mkdLink matchgroup=mkdDelimiter start="\!\?\["  end="\]\ze\s*[[(]" contains=@Spell nextgroup=mkdURL,mkdID skipwhite
    syntax region mkdID   matchgroup=mkdDelimiter start="\["      end="\]" contained
    syntax region mkdURL  matchgroup=mkdDelimiter start="("       end=")"  contained
hi link mkdLink               htmlLink

" ���Oblog Codecolor ����ڗ����Ȃ��F�Ɉ���
syntax region mkdCC   matchgroup=mkdDelimiter start="\[cc.*\]"  end="\[\/cc\]"
hi link mkdCC                 Comment

" ���̑��̐F
hi link htmlH1                Typedef
hi link mkdListItem           Operator
hi link mkdLineBreak          Underlined

" �Ǝ��ݒ�Őݒ�ς݂ɂ��� �{����blogsyntax�͓ǂݍ��܂Ȃ�
let b:current_syntax = "blogsyntax"


