"------------
" Keybinds
"------------
" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x

" dで削除した時はヤンクしない
vnoremap d "_d
nnoremap d "_d

" 行頭,行末に移動
nnoremap 1 ^
nnoremap 2 $

" 前後のバッファタブ移動
nnoremap <silent> 9 :bprev<CR>
nnoremap <silent> 0 :bnext<CR>

" 現在のバッファ削除
nnoremap bd :bd<CR>

" 括弧の補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

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
