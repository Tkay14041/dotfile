" install plugins
source ~/.config/nvim/configs/plugs.vim

" other configurations
let splt = split(glob("~/.config/nvim/configs/" . "*.vim"))

for file in splt
  execute 'source' file
endfor

