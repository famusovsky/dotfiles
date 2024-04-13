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
    colorize #history
    aliases
)

ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="hrdark"

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
source $ZSH/oh-my-zsh.sh

alias py=/usr/bin/python3
alias c=code
alias ls="eza --hyperlink"
