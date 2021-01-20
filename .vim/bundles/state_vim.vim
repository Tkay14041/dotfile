if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/takuya.uchida/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/Users/takuya.uchida/.vim/after,/Users/takuya.uchida/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/takuya.uchida/.vimrc', '/Users/takuya.uchida/.dein/dein.toml', '/Users/takuya.uchida/.dein/dein-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/takuya.uchida/.vim/bundles'
let g:dein#_runtime_path = '/Users/takuya.uchida/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/takuya.uchida/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/takuya.uchida/.vim,/usr/share/vim/vimfiles,/Users/takuya.uchida/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim81,/Users/takuya.uchida/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/takuya.uchida/.vim/after,/Users/takuya.uchida/.cache/dein/repos/github.com/Shougo/dein.vim'
filetype off
  let NERDTreeShowHidden=1
    nnoremap <silent><C-a> :NERDTreeFind<CR>:vertical res 30<CR>
    let g:airline_theme = 'onedark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
