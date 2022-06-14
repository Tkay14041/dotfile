#---------------------------------------------------------------------------
# .zshrc
#---------------------------------------------------------------------------

# init
autoload -Uz compinit && compinit

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5fafff"

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# kubernetes
## show the current context in zsh prompt
autoload -U colors; colors
#source ~/zsh-kubectl-prompt/kubectl.zsh
#RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_CONTEXT)%{$reset_color%}'

# pyenv
eval "$(pyenv init -)"

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' menu select=2
setopt auto_param_slash      # ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt mark_dirs             # ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt list_types            # 補完候補一覧でファイルの種別を識別マーク表示 (訳注:ls -F の記号)
setopt auto_menu             # 補完キー連打で順に補完候補を自動で補完
setopt auto_param_keys       # カッコの対応などを自動的に補完
setopt interactive_comments  # コマンドラインでも # 以降をコメントと見なす
setopt magic_equal_subst     # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt hist_ignore_dups      # 直前と同じコマンドの場合は履歴に追加しない
setopt share_history         # 履歴を複数の端末で共有する

setopt complete_in_word      # 語の途中でもカーソル位置で補完
setopt always_last_prompt    # カーソル位置は保持したままファイル名一覧を順次その場で表示

setopt print_eight_bit  #日本語ファイル名等8ビットを通す
setopt extended_glob  # 拡張グロブで補完(~とか^とか。例えばless *.txt~memo.txt ならmemo.txt 以外の *.txt にマッチ)

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt hist_ignore_dups
setopt hist_verify
setopt hist_expand

# anyenv
eval "$(anyenv init -)"

# go
export GOPATH=$HOME/go
export GOROOT=$( go env GOROOT )
export PATH=$GOPATH/bin:$PATH

# other option

# shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

# starship
eval "$(starship init zsh)"
