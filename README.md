
VimからWordpressへの投稿等を行える  
[VimRepress](http://www.vim.org/scripts/script.php?script_id=3510) の私家版。

### 改造している主な点

 - 投稿原稿をWordpressから読み出し時もしくは投稿時にあらかじめ設定したローカルフォルダに保存，
   Dropboxフォルダなどを指定して下書き原稿の共有を想定。
 - プロキシ設定の読み込み 環境変数`HTTP_PROXY`を自動的に判断
 - 編集時独自シンタクスハイライト（markdownベース）

### 導入

pythonモジュール markdown2 が必須

    easy_install markdown2

Vundle

    Bundle 'sousu/VimRepress'

Wordpress側がunicodeのみ対応のため，vim側もUTF-8とする形のほうがトラブルは少ないです。

    set encoding=utf-8

`$HOME`に`.vimpressrc`を作成し以下の例を参考に対象Wordpressの設定。

    [testtest.jp]
    blog_url            = http://testtest.jp/wp/
    username            = yourname
    password            = yourpass
    local_draft_dir     = ~/Dropbox/blog_draft

### 操作

本家から変わっておりません。基本的には以下。  
ローカルに保存したDraftを直接BlogSaveする事で素早く投稿が可能。

 - 新規作成 :BlogNew
 - 編集リスト :BlogList
 - 投稿 :BlogSave



