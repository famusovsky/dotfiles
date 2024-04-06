export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export PATH=/Users/alexeystepanov/go/bin:$PATH
export PATH=/Users/alexeystepanov/Library/Python/3.11/bin:$PATH

export HOMEBREW_AUTO_UPDATE_SECS="86400"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
    git 
    web-search
    colorize #history
    aliases
)

ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="hrdark"

ZSH_WEB_SEARCH_ENGINES=(
    ya "https://yandex.ru/yandsearch?text="
    cppref "https://en.cppreference.com/w/index.php?Search&search="
)

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
source $ZSH/oh-my-zsh.sh

alias py=/usr/bin/python3
alias c="code"
