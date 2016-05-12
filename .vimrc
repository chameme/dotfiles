let g:rc_dir = expand('~/.vim') "vim設定ディレクトリ
execute 'set runtimepath^=' . g:rc_dir

" ********** dein.vim 設定 **********
if !&compatible
  set nocompatible
endif

let s:dein_dir = g:rc_dir . '/dein' "deinディレクトリ
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim' "deinリポジトリ

"dein.vimがないときはgit cloneする処理をいれるか悩み中・・・
execute 'set runtimepath^=' . s:dein_repo_dir

" plugin設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let s:toml      = g:rc_dir . '/.dein.toml'
  let s:lazy_toml = g:rc_dir . '/.dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin on

" ********** NERDTree.vim 設定 **********
nnoremap <silent><C-e> :NERDTreeToggle<CR>  "ディレクトリツリー開閉ショートカット Ctrl + e

" ********** ファイル設定 *********
set fenc=utf-8    " 文字コードはUTF-8
set nobackup      " バックアップファイルは作成しない
set noswapfile    " スワップファイルは作成しない
set autoread      " 編集中のファイルが変更されたら自動で読み直す
set hidden        " バッファが編集中でもその他のファイルを開けるようにする
set showcmd       " 入力中のコマンドをステータスに表示する

" ********** 見た目の設定 ********** 
set number        " 行数を表示する
set cursorline    " 現在の行を強調表示する
set cursorcolumn  " 現在の行を強調表示する（縦）
set showmatch     " 括弧入力時の対応する括弧を表示する
set laststatus=2  " ステータスラインを常に表示する

" ********** タブ設定 ********** 
set expandtab     " ソフトタブ有効化(Tab文字を半角スペースにする)
set tabstop=4	  " タブ文字幅はスペース4つ
set softtabstop=2 " ソフトタブ幅はスペース2つ

" ********** インデント 設定 ********** 
set autoindent	 "改行時自動インデント
set shiftwidth=2 "autoindent時の幅を2に

