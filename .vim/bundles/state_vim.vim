if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/uchidatakuya/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/uchidatakuya/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/Users/uchidatakuya/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/uchidatakuya/.vimrc', '/Users/uchidatakuya/.dein/dein.toml', '/Users/uchidatakuya/.dein/dein-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/uchidatakuya/.vim/bundles'
let g:dein#_runtime_path = '/Users/uchidatakuya/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/uchidatakuya/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/uchidatakuya/.vim/bundles/repos/github.com/Shougo/dein.vim/,/Users/uchidatakuya/.vim,/usr/share/vim/vimfiles,/Users/uchidatakuya/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim81,/Users/uchidatakuya/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/uchidatakuya/.vim/after'
filetype off
  let NERDTreeShowHidden=1
    nnoremap <silent><C-a> :NERDTreeFind<CR>:vertical res 30<CR>
    let g:airline_theme = 'onedark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
