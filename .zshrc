export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export PATH=/Users/alexeystepanov/go/bin:$PATH
export PATH=/Users/alexeystepanov/Library/Python/3.11/bin:$PATH
export HOMEBREW_AUTO_UPDATE_SECS="86400"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=hx

eval $(thefuck --alias)

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

alias py="/usr/bin/python3"
alias c="code"
alias ls="eza --hyperlink"
alias starwars="telnet towel.blinkenlights.nl"
alias helix="hx"
alias proxy="toggle-proxy.sh"

# plan9
export PLAN9=/Users/alexeystepanov/plan9port
alias acme="$PLAN9/bin/9 acme -f /mnt/font/'JetBrainsMono-Regular'/14a/font -l ~/acme.dump &"

fortune | cowsay -f www
