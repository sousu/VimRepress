
VimからWordpressの投稿等を行うVimRepress(http://www.vim.org/scripts/script.php?script_id=3510)

### 本家から変更している点

 - Markdown形式で編集時のシンタクスハイライト
 - プロキシ設定の読み込み(環境変数:HTTP_PROXY)

### 導入

pythonでMarkdown/Markdown2を入れておく

    easy_install Markdown

Vimrepressが入っている前提で，Vundleを記入。

    Bundle 'sousu/VimRepress'



