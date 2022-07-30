"-----------
" encoding
"-----------
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set nobomb

"-------------------
" vim configuration
"-------------------
set shell=/bin/zsh
set number

" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed

" ビープ音を消す
set belloff=all

" swap configuration
set directory=~/.local/share/nvim/tmp

" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start

" カーソル位置 
set cursorline
set cursorcolumn
set ruler

" preserve buffer
autocmd BufWritePost * mkview
autocmd BufReadPost * silent! loadview

"------------
" search
"------------
" 検索するときに大文字小文字を区別しない
set ignorecase

" 検索パターンに大文字が含まれる場合は区別する
set smartcase

" 検索した時にハイライト
set nohlsearch

" インクリメンタルサーチ
set incsearch

" ESC２回でハイライト解除
nnoremap <ESC><ESC> :noh<CR>

" vimgrep, grep, Ggrepなどで自動的にquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow

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

