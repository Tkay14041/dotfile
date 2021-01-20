set shell=/bin/zsh

"------------
" encoding 
"------------
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

"------------
" vim options
"------------
" スワップファイルの作成先を変更
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" ビープ音を消す
set belloff=all

" 行番号系
set number

" タイトル系
set title

" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start

" カーソル位置 
set cursorline
set cursorcolumn
set ruler

" タブ表示
set showtabline=2

" ステータスバー表示
set laststatus=2

" コントロール+e でツリー表示
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" デフォルトで隠しファイルを表示
let NERDTreeShowHidden = 1

"------------
" search
"------------
" 検索するときに大文字小文字を区別しない
set ignorecase

" 検索パターンに大文字が含まれる場合は区別する
set smartcase

" 検索した時にハイライト
set hlsearch

" インクリメンタルサーチ
set incsearch

" ESC２回でハイライト解除
nnoremap <ESC><ESC> :noh<CR>

"------------
" indent
"------------
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet

"------------
" key bind
"------------
" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" 1 で行頭に移動
nnoremap 1 ^

" 2で行末に移動
nnoremap 2 $

" 9 で前のバッファタブへ
nnoremap <silent> 9 :bprev<CR>

" 0 で次のバッファタブへ
nnoremap <silent> 0 :bnext<CR>

" Option + | でファイル内の文字置換
nnoremap \ :%s/old/new/g<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

" 現在のバッファ削除
nnoremap bd :bd<CR>

" 括弧の補完
" inoremap {<Enter> {}<Left><CR><ESC><S-o>
" inoremap [<Enter> []<Left><CR><ESC><S-o>
" inoremap (<Enter> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>

" insertモードでemacsのキーバインドを使えるようにする
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill()<CR>

" visulaモードでインデント調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面分割系
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l



"------------
" plugins
"------------
if &compatible
  set nocompatible
endif

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/bundles')
"
" dein.vim本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
"
"if &runtimepath !~# '/dein.vim'
"  if !isdirectory(s:dein_repo_dir)
"    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
"  endif
"  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
"endif
set runtimepath+=/Users/takuya.uchida/.cache/dein/repos/github.com/Shougo/dein.vim
" tomlセット
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" プラグインのロード
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" インストールしていないプラグインがあればインストールを実行
if dein#check_install()
  call dein#install()
endif

"------------
" color scheme
"------------
syntax enable
colorscheme darcula

